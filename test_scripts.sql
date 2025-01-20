SELECT sb.subject_id,
       sb.subject_name,
       sem.semester_count,
       m.major_name,
       d.dep_name        AS department_name
  FROM subjects sb
       JOIN semesters sem ON sb.semester_id = sem.semester_id
       JOIN majors m     ON sem.major_id = m.major_id
       JOIN departments d ON m.department_id = d.department_id
ORDER BY m.major_name, sb.subject_name;

/

SELECT salary,
       COUNT(*) AS how_many
  FROM employees
GROUP BY salary
ORDER BY salary DESC;

/

SELECT m.major_name,
       COUNT(sb.subject_id) AS subjects_count
  FROM majors m
       JOIN semesters sem ON m.major_id = sem.major_id
       JOIN subjects sb ON sb.semester_id = sem.semester_id
GROUP BY m.major_name;

/

SELECT calculate_teaching_bonus(10) AS bonus_for_emp10
FROM DUAL;

SELECT calculate_teaching_bonus(12) AS bonus_for_emp12
FROM DUAL;

/

SELECT calculate_average_from_test(10, 4) AS avg_exam
FROM DUAL;

/

BEGIN
    DECLARE
        v_student_id student_details.student_id%TYPE := student_id_seq.NEXTVAL;
    BEGIN
        add_student_to_group(
            p_student_id => v_student_id,
            p_name       => 'Ethan',
            p_surname    => 'Hunt',
            p_gender     => 'M',
            p_major_name => 'Informatyka'
        );

        DBMS_OUTPUT.PUT_LINE('Assigned Student ID: ' || v_student_id);
    END;
END;
/
