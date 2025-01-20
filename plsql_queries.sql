-- oblicza średnią grupy z testu

CREATE OR REPLACE FUNCTION calculate_average_from_test(p_test_id NUMBER, p_gr_id NUMBER)
RETURN FLOAT
AS
    v_sum NUMBER := 0;
    v_students NUMBER := 0;
BEGIN
    SELECT COUNT(STUDENT_ID)
    INTO v_students
    FROM STUDENTS s
    WHERE s.GROUP_ID = p_gr_id;

    SELECT NVL(SUM(gd.grade_value), 0)
    INTO v_sum
    FROM GRADES_DETAILS gd
    WHERE gd.GRADE_ID IN
    (
        SELECT gr.GRADE_DETAILS_ID
        FROM GRADES gr
        WHERE gr.TEST_ID = p_test_id AND gr.STUDENT_ID IN
        (
            SELECT st.STUDENT_ID
            FROM STUDENTS st
            WHERE st.GROUP_ID = p_gr_id
        )
    );
    RETURN CASE
        WHEN v_students = 0 THEN 0
        ELSE ROUND(v_sum / v_students, 2)
    END;
END;

/


SELECT calculate_average_from_test(2, 2) FROM DUAL;


/

CREATE OR REPLACE FUNCTION calculate_teaching_bonus(p_emp_id NUMBER)
RETURN NUMBER
AS
    v_dean_bonus NUMBER := 5000;
    v_lecturer_bonus NUMBER := 3000;
    v_assistant_bonus NUMBER := 500;
    v_sum NUMBER := 0;
    v_temp NUMBER;

    CURSOR c_dean IS
        SELECT 1 FROM departments WHERE dean_id = p_emp_id;

    CURSOR c_lecturer IS
        SELECT 1 FROM subjects WHERE lecturer_id = p_emp_id;

    CURSOR c_assistant IS
        SELECT group_id FROM groups WHERE employee_id = p_emp_id;
BEGIN

    OPEN c_dean;
    FETCH c_dean INTO v_temp;
    IF c_dean%FOUND THEN
        v_sum := v_sum + v_dean_bonus;
    END IF;
    CLOSE c_dean;

    OPEN c_lecturer;
    FETCH c_lecturer INTO v_temp;
    IF c_lecturer%FOUND THEN
        v_sum := v_sum + v_lecturer_bonus;
    END IF;
    CLOSE c_lecturer;


    OPEN c_assistant;
    LOOP
        FETCH c_assistant INTO v_temp;
        EXIT WHEN c_assistant%NOTFOUND;
        v_sum := v_sum + v_assistant_bonus;
    END LOOP;
    CLOSE c_assistant;

    RETURN v_sum;
END;
/

SELECT calculate_teaching_bonus(10) FROM DUAL;

SELECT COUNT(GROUP_ID)
FROM GROUPS
WHERE EMPLOYEE_ID = 10;

SELECT COUNT(SUBJECT_ID)
FROM SUBJECTS
WHERE LECTURER_ID = 10;


/

CREATE OR REPLACE PROCEDURE assign_test_to_student(
    p_student_id   IN students.student_id%TYPE,
    p_test_id      IN tests.test_id%TYPE,
    p_grade_value  IN grades_details.grade_value%TYPE DEFAULT NULL
)
IS
    v_new_grade_id grades_details.grade_id%TYPE;
BEGIN
    INSERT INTO grades_details (grade_date, grade_value)
    VALUES (SYSDATE, p_grade_value)
    RETURNING grade_id INTO v_new_grade_id;

    INSERT INTO grades (student_id, grade_details_id, test_id)
    VALUES (p_student_id, v_new_grade_id, p_test_id);

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

BEGIN
    assign_test_to_student(1, 10);
END;

/


CREATE OR REPLACE TRIGGER trg_check_major_limit
BEFORE INSERT ON students
FOR EACH ROW
DECLARE
    v_major_id     majors.major_id%TYPE;
    v_student_limit majors.student_limit%TYPE;
    v_current_count NUMBER;
BEGIN

 SELECT sem.major_id
   INTO v_major_id
   FROM groups g
        JOIN subjects subj ON g.subject_id = subj.subject_id
        JOIN semesters sem ON subj.semester_id = sem.semester_id
  WHERE g.group_id = :NEW.group_id;

 SELECT m.student_limit
   INTO v_student_limit
   FROM majors m
  WHERE m.major_id = v_major_id;


 SELECT COUNT(*)
   INTO v_current_count
   FROM students s
        JOIN groups g2 ON s.group_id = g2.group_id
        JOIN subjects subj2 ON g2.subject_id = subj2.subject_id
        JOIN semesters sem2 ON subj2.semester_id = sem2.semester_id
  WHERE sem2.major_id = v_major_id;


 IF v_current_count + 1 > v_student_limit THEN
     RAISE_APPLICATION_ERROR(-20001,'Przekroczono limit studentów na kierunku o ID=' || v_major_id || '. Maksymalny limit wynosi: ' || v_student_limit);
 END IF;
END;
/


CREATE OR REPLACE PROCEDURE add_student_to_group(
    p_student_id   IN OUT student_details.student_id%TYPE,
    p_name         IN student_details.student_name%TYPE,
    p_surname      IN student_details.surname%TYPE,
    p_gender       IN student_details.gender%TYPE,
    p_major_name   IN majors.major_name%TYPE
)
IS
    v_major_id  majors.major_id%TYPE;
    v_group_id  groups.group_id%TYPE;
BEGIN
    -- Retrieve the major ID based on the major name
    SELECT m.major_id
      INTO v_major_id
      FROM majors m
     WHERE m.major_name = p_major_name;

    -- Insert into student_details
    IF p_student_id IS NOT NULL THEN
        INSERT INTO student_details (student_id, student_name, surname, gender, date_start)
        VALUES (p_student_id, p_name, p_surname, p_gender, SYSDATE);
    ELSE
        INSERT INTO student_details (student_name, surname, gender, date_start)
        VALUES (p_name, p_surname, p_gender, SYSDATE)
        RETURNING student_id INTO p_student_id;
    END IF;

    -- Assign student to a group
    SELECT sub.group_id
    INTO v_group_id
    FROM (
        SELECT g.group_id,
                COUNT(sg.student_id) AS student_count
            FROM groups g
            LEFT JOIN STUDENTS sg ON g.group_id = sg.group_id
        WHERE g.subject_id IN (
                SELECT subj.subject_id
                    FROM subjects subj
                    JOIN semesters sem ON subj.semester_id = sem.semester_id
                    WHERE sem.major_id = v_major_id
            )
        GROUP BY g.group_id
        ORDER BY COUNT(sg.student_id) ASC
    ) sub
    WHERE ROWNUM = 1;

    -- Insert into student_groups (Assuming such a table exists)
    INSERT INTO STUDENTS (student_id, group_id)
    VALUES (p_student_id, v_group_id); -- Replace '1' with the appropriate employee_id

    COMMIT;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'No group found for the specified major.');
    WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20003, 'Multiple groups found, unable to assign uniquely.');
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER trg_check_test_and_grade_date
BEFORE INSERT OR UPDATE ON grades
FOR EACH ROW
DECLARE
    v_test_date   tests.test_date%TYPE;
    v_grade_date  grades_details.grade_date%TYPE;
BEGIN
    SELECT gd.grade_date
      INTO v_grade_date
      FROM grades_details gd
     WHERE gd.grade_id = :NEW.grade_details_id;

    SELECT t.test_date
      INTO v_test_date
      FROM tests t
     WHERE t.test_id = :NEW.test_id;

    IF v_grade_date < v_test_date THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Data wystawienia oceny (' || TO_CHAR(v_grade_date, 'YYYY-MM-DD') ||
            ') nie może być wcześniejsza niż data testu (' ||
            TO_CHAR(v_test_date, 'YYYY-MM-DD') || ').'
        );
    END IF;
END;
/