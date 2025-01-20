BEGIN
   FOR c IN (SELECT constraint_name, table_name
             FROM user_constraints
             WHERE constraint_type = 'R') LOOP
      EXECUTE IMMEDIATE 'ALTER TABLE ' || c.table_name || ' DISABLE CONSTRAINT ' || c.constraint_name;
   END LOOP;
END;
/

-- INSERT INTO DEPARTMENTS

INSERT INTO departments (
    department_id,
    dep_name,
    dean_id
)
VALUES (1, 'Eiti', 1);


-- -- INSERT INTO EMPLOYEES

INSERT INTO EMPLOYEES (
    EMPLOYEE_ID,
    emp_NAME,
    SURNAME,
    SALARY,
    GENDER
)
VALUES (1, 'Jan', 'Nowak', 7000, 'M');

INSERT INTO EMPLOYEES VALUES(2, 'Wojciech', 'Lalka', 7500, 'M');
INSERT INTO EMPLOYEES VALUES(3, 'Elżbieta', 'Orzech', 5000, 'K');
INSERT INTO EMPLOYEES VALUES(4, 'Kamil', 'Orzech', 5000, 'M');
INSERT INTO EMPLOYEES VALUES(5, 'Wiktoria', 'Kowal', 5000, 'K');
INSERT INTO EMPLOYEES VALUES(6, 'MArcin', 'Kamień', 5000, 'M');
INSERT INTO EMPLOYEES VALUES(7, 'Elżbieta', 'Marek', 5000, 'K');
INSERT INTO EMPLOYEES VALUES(8, 'Jolanta', 'Maj', 5000, 'K');
INSERT INTO EMPLOYEES VALUES(9, 'Jakub', 'Piątka', 5000, 'M');
INSERT INTO EMPLOYEES VALUES(10, 'Agnieszka', 'Szmurło', 15000, 'K');
INSERT INTO EMPLOYEES VALUES(11, 'Jakub', 'Blaszczykowski', 5000, 'M');
INSERT INTO EMPLOYEES VALUES(12, 'Anna', 'Lewandowska', 5000, 'K');


-- INSERT INTO MAJORS

INSERT INTO MAJORS (
    MAJOR_ID,
    DEPARTMENT_ID,
    major_NAME,
    STUDENT_LIMIT
)
VALUES (1, 1, 'Informatyka', 120);

INSERT INTO MAJORS VALUES(2, 1, 'Cyberbezpieczeństwo', 60);


-- INSERT INTO SEMESTERS

INSERT INTO SEMESTERS (
    SEMESTER_ID,
    MAJOR_ID,
    SEMESTER_COUNT
)
VALUES (1, 1, 1);

INSERT INTO SEMESTERS VALUES (2, 1, 2);
INSERT INTO SEMESTERS VALUES (3, 1, 3);

INSERT INTO SEMESTERS VALUES (4, 2, 1);
INSERT INTO SEMESTERS VALUES (5, 2, 2);
INSERT INTO SEMESTERS VALUES (6, 2, 3);

-- INSERT INTO SUBJECTS

INSERT INTO SUBJECTS (
    SUBJECT_ID,
    subject_NAME,
    ECTS_COUNT,
    LECTURER_ID,
    SEMESTER_ID
)
VALUES (1, 'PIPR', 6, 7, 1);

INSERT INTO SUBJECTS VALUES (2, 'PTCY', 4, 4, 1);
INSERT INTO SUBJECTS VALUES (3, 'ARKO', 6, 2, 2);
INSERT INTO SUBJECTS VALUES (4, 'AISDI', 4, 5, 2);
INSERT INTO SUBJECTS VALUES (5, 'BD1', 4, 10, 3);
INSERT INTO SUBJECTS VALUES (6, 'PAP', 5, 5, 3);

INSERT INTO SUBJECTS VALUES (7, 'MAT1', 4, 6, 4);
INSERT INTO SUBJECTS VALUES (8, 'MAT2', 6, 7, 4);
INSERT INTO SUBJECTS VALUES (9, 'S1', 2, 11, 5);
INSERT INTO SUBJECTS VALUES (10, 'S2', 7, 12, 5);
INSERT INTO SUBJECTS VALUES (11, 'BD1', 2, 9, 6);
INSERT INTO SUBJECTS VALUES (12, 'S3', 1, 5, 6);

-- INSERT INTO GROUPS

INSERT INTO GROUPS (
    GROUP_ID,
    SUBJECT_ID,
    EMPLOYEE_ID
)
VALUES (1, 1, 2);

INSERT INTO GROUPS VALUES (2, 2, 4);
INSERT INTO GROUPS VALUES (3, 3, 5);
INSERT INTO GROUPS VALUES (4, 4, 6);
INSERT INTO GROUPS VALUES (5, 5, 10);
INSERT INTO GROUPS VALUES (6, 6, 11);
INSERT INTO GROUPS VALUES (7, 7, 12);
INSERT INTO GROUPS VALUES (8, 8, 4);
INSERT INTO GROUPS VALUES (9, 9, 5);
INSERT INTO GROUPS VALUES (10, 10, 6);
INSERT INTO GROUPS VALUES (11, 11, 2);
INSERT INTO GROUPS VALUES (12, 12, 3);

INSERT INTO STUDENTS (
    STUDENT_ID,
    GROUP_ID
)
VALUES(1, 1);
INSERT INTO STUDENTS VALUES(2, 1);
INSERT INTO STUDENTS VALUES (3, 1);
INSERT INTO STUDENTS VALUES (4, 1);
INSERT INTO STUDENTS VALUES (5, 1);
INSERT INTO STUDENTS VALUES (6, 1);
INSERT INTO STUDENTS VALUES (7, 1);

INSERT INTO STUDENTS VALUES (8, 2);
INSERT INTO STUDENTS VALUES (9, 2);
INSERT INTO STUDENTS VALUES (10, 2);
INSERT INTO STUDENTS VALUES (11, 2);
INSERT INTO STUDENTS VALUES (12, 2);

INSERT INTO STUDENTS VALUES (13, 3);
INSERT INTO STUDENTS VALUES (14, 3);
INSERT INTO STUDENTS VALUES (15, 3);
INSERT INTO STUDENTS VALUES (16, 3);
INSERT INTO STUDENTS VALUES (17, 3);

INSERT INTO STUDENTS VALUES (18, 4);
INSERT INTO STUDENTS VALUES (19, 4);
INSERT INTO STUDENTS VALUES (20, 4);
INSERT INTO STUDENTS VALUES (21, 4);
INSERT INTO STUDENTS VALUES (22, 4);

INSERT INTO STUDENTS VALUES (23, 5);
INSERT INTO STUDENTS VALUES (24, 5);
INSERT INTO STUDENTS VALUES (25, 5);
INSERT INTO STUDENTS VALUES (26, 5);
INSERT INTO STUDENTS VALUES (27, 5);

INSERT INTO STUDENTS VALUES (28, 6);
INSERT INTO STUDENTS VALUES (29, 6);
INSERT INTO STUDENTS VALUES (30, 6);
INSERT INTO STUDENTS VALUES (31, 6);
INSERT INTO STUDENTS VALUES (32, 6);

INSERT INTO STUDENTS VALUES (33, 7);
INSERT INTO STUDENTS VALUES (34, 7);
INSERT INTO STUDENTS VALUES (35, 7);
INSERT INTO STUDENTS VALUES (36, 7);
INSERT INTO STUDENTS VALUES (37, 7);

INSERT INTO STUDENTS VALUES (38, 8);
INSERT INTO STUDENTS VALUES (39, 8);
INSERT INTO STUDENTS VALUES (40, 8);
INSERT INTO STUDENTS VALUES (41, 8);
INSERT INTO STUDENTS VALUES (42, 8);

INSERT INTO STUDENTS VALUES (43, 9);
INSERT INTO STUDENTS VALUES (44, 9);
INSERT INTO STUDENTS VALUES (45, 9);
INSERT INTO STUDENTS VALUES (46, 9);
INSERT INTO STUDENTS VALUES (47, 9);

INSERT INTO STUDENTS VALUES (48, 10);
INSERT INTO STUDENTS VALUES (49, 10);
INSERT INTO STUDENTS VALUES (50, 10);
INSERT INTO STUDENTS VALUES (51, 10);
INSERT INTO STUDENTS VALUES (52, 10);

INSERT INTO STUDENTS VALUES (53, 11);
INSERT INTO STUDENTS VALUES (54, 11);
INSERT INTO STUDENTS VALUES (55, 11);
INSERT INTO STUDENTS VALUES (56, 11);
INSERT INTO STUDENTS VALUES (57, 11);

INSERT INTO STUDENTS VALUES (58, 12);
INSERT INTO STUDENTS VALUES (59, 12);
INSERT INTO STUDENTS VALUES (60, 12);
INSERT INTO STUDENTS VALUES (61, 12);
INSERT INTO STUDENTS VALUES (62, 12);

-- INSERT INTO STUDENT_DETAILS


INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (1, 'Jan', 'Kończyna', DATE '2022-10-01', NULL, 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (2, 'Lamine', 'Yamal', DATE '2024-10-01', NULL, 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (3, 'Anna', 'Nowak', DATE '2018-10-01', DATE '2020-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (4, 'Piotr', 'Kowalski', DATE '2018-10-01', DATE '2020-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (5, 'Maria', 'Wiśniewska', DATE '2018-10-01', DATE '2020-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (6, 'Krzysztof', 'Wójcik', DATE '2018-10-01', DATE '2020-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (7, 'Ewa', 'Kowalczyk', DATE '2018-10-01', DATE '2020-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (8, 'Tomasz', 'Kamiński', DATE '2019-10-01', DATE '2021-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (9, 'Agnieszka', 'Lewandowska', DATE '2019-10-01', DATE '2021-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (10, 'Marcin', 'Zieliński', DATE '2019-10-01', DATE '2021-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (11, 'Barbara', 'Szymańska', DATE '2019-10-01', DATE '2021-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (12, 'Paweł', 'Woźniak', DATE '2019-10-01', DATE '2021-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (13, 'Magdalena', 'Dąbrowska', DATE '2020-10-01', DATE '2022-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (14, 'Jakub', 'Jankowski', DATE '2020-10-01', DATE '2022-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (15, 'Natalia', 'Mazur', DATE '2020-10-01', DATE '2022-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (16, 'Michał', 'Krawczyk', DATE '2020-10-01', DATE '2022-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (17, 'Katarzyna', 'Piotrowska', DATE '2020-10-01', DATE '2022-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (18, 'Grzegorz', 'Grabowski', DATE '2021-10-01', DATE '2023-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (19, 'Joanna', 'Pawłowska', DATE '2021-10-01', DATE '2023-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (20, 'Robert', 'Michalski', DATE '2021-10-01', DATE '2023-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (21, 'Monika', 'Nowicka', DATE '2021-10-01', DATE '2023-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (22, 'Łukasz', 'Adamczyk', DATE '2021-10-01', DATE '2023-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (23, 'Patryk', 'Dudek', DATE '2022-10-01', DATE '2024-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (24, 'Elżbieta', 'Zając', DATE '2022-10-01', DATE '2024-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (25, 'Dariusz', 'Baran', DATE '2022-10-01', DATE '2024-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (26, 'Beata', 'Michalak', DATE '2022-10-01', DATE '2024-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (27, 'Szymon', 'Ostrowski', DATE '2022-10-01', DATE '2024-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (28, 'Alicja', 'Majewska', DATE '2023-10-01', NULL, 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (29, 'Paula', 'Wróblewska', DATE '2023-10-01', NULL, 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (30, 'Artur', 'Jaworski', DATE '2023-10-01', NULL, 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (31, 'Oliwia', 'Malinowska', DATE '2023-10-01', NULL, 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (32, 'Dominik', 'Jabłoński', DATE '2023-10-01', NULL, 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (33, 'Zofia', 'Walczak', DATE '2018-10-01', DATE '2020-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (34, 'Karolina', 'Kaczmarek', DATE '2018-10-01', DATE '2020-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (35, 'Damian', 'Wieczorek', DATE '2018-10-01', DATE '2020-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (36, 'Martyna', 'Sikora', DATE '2018-10-01', DATE '2020-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (37, 'Kamil', 'Szulc', DATE '2018-10-01', DATE '2020-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (38, 'Julia', 'Bąk', DATE '2019-10-01', DATE '2021-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (39, 'Filip', 'Górski', DATE '2019-10-01', DATE '2021-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (40, 'Emilia', 'Czerwińska', DATE '2019-10-01', DATE '2021-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (41, 'Nikola', 'Bielecka', DATE '2019-10-01', DATE '2021-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (42, 'Marek', 'Zawadzki', DATE '2019-10-01', DATE '2021-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (43, 'Aleksandra', 'Kubiak', DATE '2020-10-01', DATE '2022-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (44, 'Mateusz', 'Wasilewski', DATE '2020-10-01', DATE '2022-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (45, 'Barbara', 'Lis', DATE '2020-10-01', DATE '2022-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (46, 'Sebastian', 'Zielonka', DATE '2020-10-01', DATE '2022-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (47, 'Patrycja', 'Laskowska', DATE '2020-10-01', DATE '2022-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (48, 'Wiktoria', 'Nowakowska', DATE '2021-10-01', DATE '2023-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (49, 'Bartosz', 'Krawczyk', DATE '2021-10-01', DATE '2023-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (50, 'Daniel', 'Maj', DATE '2021-10-01', DATE '2023-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (51, 'Gabriela', 'Jasińska', DATE '2021-10-01', DATE '2023-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (52, 'Tadeusz', 'Borek', DATE '2021-10-01', DATE '2023-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (53, 'Milena', 'Ziółkowski', DATE '2022-10-01', DATE '2024-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (54, 'Igor', 'Bukowski', DATE '2022-10-01', DATE '2024-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (55, 'Marta', 'Kościuszko', DATE '2022-10-01', DATE '2024-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (56, 'Eryk', 'Sawicki', DATE '2022-10-01', DATE '2024-01-31', 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (57, 'Martyna', 'Kwiatkowska', DATE '2022-10-01', DATE '2024-01-31', 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (58, 'Oskar', 'Ostrowski', DATE '2023-10-01', NULL, 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (59, 'Laura', 'Sadowska', DATE '2023-10-01', NULL, 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (60, 'Norbert', 'Jurek', DATE '2023-10-01', NULL, 'M');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (61, 'Klara', 'Bartczak', DATE '2023-10-01', NULL, 'K');

INSERT INTO STUDENT_DETAILS (STUDENT_ID, student_name, SURNAME, DATE_START, DATE_END, GENDER)
VALUES (62, 'Leon', 'Krawczyk', DATE '2023-10-01', NULL, 'M');

-- INSERT INTO TESTS

INSERT INTO TESTS (
    TEST_ID,
    test_TYPE,
    TEST_DATE
)
VALUES (1, 'Kolokwium', DATE '2024-01-01');
INSERT INTO TESTS VALUES (2, 'Egzamin', DATE '2020-01-15');
INSERT INTO TESTS VALUES (3, 'Wejściówka', DATE '2020-02-20');

INSERT INTO TESTS VALUES (4, 'Kolokwium', DATE '2021-01-10');
INSERT INTO TESTS VALUES (5, 'Egzamin', DATE '2021-02-25');

INSERT INTO TESTS VALUES (6, 'Wejściówka', DATE '2022-01-05');
INSERT INTO TESTS VALUES (7, 'Kolokwium', DATE '2022-02-18');

INSERT INTO TESTS VALUES (8, 'Egzamin', DATE '2023-01-22');
INSERT INTO TESTS VALUES (9, 'Wejściówka', DATE '2023-03-10');

INSERT INTO TESTS VALUES (10, 'Kolokwium', DATE '2024-01-12');
INSERT INTO TESTS VALUES (11, 'Egzamin', DATE '2024-02-28');
INSERT INTO TESTS VALUES (12, 'Wejściówka', DATE '2024-03-15');

-- INSERT INTO grades

INSERT INTO GRADES (
    STUDENT_ID,
    GRADE_DETAILS_ID,
    TEST_ID
)
VALUES(1, 1, 1);
INSERT INTO GRADES VALUES (2, 2, 1);
INSERT INTO GRADES VALUES (3, 3, 1);
INSERT INTO GRADES VALUES (4, 4, 1);
INSERT INTO GRADES VALUES (5, 5, 1);
INSERT INTO GRADES VALUES (6, 6, 1);
INSERT INTO GRADES VALUES (7, 7, 1);

INSERT INTO GRADES VALUES (8, 8, 2);
INSERT INTO GRADES VALUES (9, 9, 2);
INSERT INTO GRADES VALUES (10, 10, 2);
INSERT INTO GRADES VALUES (11, 11, 2);
INSERT INTO GRADES VALUES (12, 12, 2);

INSERT INTO GRADES VALUES (13, 13, 3);
INSERT INTO GRADES VALUES (14, 14, 3);
INSERT INTO GRADES VALUES (15, 15, 3);
INSERT INTO GRADES VALUES (16, 16, 3);
INSERT INTO GRADES VALUES (17, 17, 3);

INSERT INTO GRADES VALUES (18, 18, 4);
INSERT INTO GRADES VALUES (19, 19, 4);
INSERT INTO GRADES VALUES (20, 20, 4);
INSERT INTO GRADES VALUES (21, 21, 4);
INSERT INTO GRADES VALUES (22, 22, 4);

INSERT INTO GRADES VALUES (23, 23, 5);
INSERT INTO GRADES VALUES (24, 24, 5);
INSERT INTO GRADES VALUES (25, 25, 5);
INSERT INTO GRADES VALUES (26, 26, 5);
INSERT INTO GRADES VALUES (27, 27, 5);

INSERT INTO GRADES VALUES (28, 28, 6);
INSERT INTO GRADES VALUES (29, 29, 6);
INSERT INTO GRADES VALUES (30, 30, 6);
INSERT INTO GRADES VALUES (31, 31, 6);
INSERT INTO GRADES VALUES (32, 32, 6);

INSERT INTO GRADES VALUES (33, 33, 7);
INSERT INTO GRADES VALUES (34, 34, 7);
INSERT INTO GRADES VALUES (35, 35, 7);
INSERT INTO GRADES VALUES (36, 36, 7);
INSERT INTO GRADES VALUES (37, 37, 7);

INSERT INTO GRADES VALUES (38, 38, 8);
INSERT INTO GRADES VALUES (39, 39, 8);
INSERT INTO GRADES VALUES (40, 40, 8);
INSERT INTO GRADES VALUES (41, 41, 8);
INSERT INTO GRADES VALUES (42, 42, 8);

INSERT INTO GRADES VALUES (43, 43, 9);
INSERT INTO GRADES VALUES (44, 44, 9);
INSERT INTO GRADES VALUES (45, 45, 9);
INSERT INTO GRADES VALUES (46, 46, 9);
INSERT INTO GRADES VALUES (47, 47, 9);

INSERT INTO GRADES VALUES (48, 48, 10);
INSERT INTO GRADES VALUES (49, 49, 10);
INSERT INTO GRADES VALUES (50, 50, 10);
INSERT INTO GRADES VALUES (51, 51, 10);
INSERT INTO GRADES VALUES (52, 52, 10);

INSERT INTO GRADES VALUES (53, 53, 11);
INSERT INTO GRADES VALUES (54, 54, 11);
INSERT INTO GRADES VALUES (55, 55, 11);
INSERT INTO GRADES VALUES (56, 56, 11);
INSERT INTO GRADES VALUES (57, 57, 11);

INSERT INTO GRADES VALUES (58, 58, 12);
INSERT INTO GRADES VALUES (59, 59, 12);
INSERT INTO GRADES VALUES (60, 60, 12);
INSERT INTO GRADES VALUES (61, 61, 12);
INSERT INTO GRADES VALUES (62, 62, 12);

-- INSERT INTO GRADES_DETAILS

INSERT INTO GRADES_DETAILS (
    GRADE_ID,
    GRADE_DATE,
    GRADE_VALUE
)
VALUES(1, DATE '2024-01-03', 3);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (2, DATE '2024-01-03', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (3, DATE '2024-01-03', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (4, DATE '2024-01-03', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (5, DATE '2024-01-03', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (6, DATE '2024-01-03', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (7, DATE '2024-01-03', 4);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (8, DATE '2020-01-17', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (9, DATE '2020-01-17', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (10, DATE '2020-01-17', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (11, DATE '2020-01-17', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (12, DATE '2020-01-17', 3);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (13, DATE '2020-02-22', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (14, DATE '2020-02-22', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (15, DATE '2020-02-22', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (16, DATE '2020-02-22', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (17, DATE '2020-02-22', 4);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (18, DATE '2021-01-12', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (19, DATE '2021-01-12', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (20, DATE '2021-01-12', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (21, DATE '2021-01-12', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (22, DATE '2021-01-12', 2);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (23, DATE '2021-02-27', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (24, DATE '2021-02-27', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (25, DATE '2021-02-27', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (26, DATE '2021-02-27', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (27, DATE '2021-02-27', 4);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (28, DATE '2022-01-07', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (29, DATE '2022-01-07', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (30, DATE '2022-01-07', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (31, DATE '2022-01-07', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (32, DATE '2022-01-07', 3);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (33, DATE '2022-02-20', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (34, DATE '2022-02-20', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (35, DATE '2022-02-20', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (36, DATE '2022-02-20', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (37, DATE '2022-02-20', 5);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (38, DATE '2023-01-24', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (39, DATE '2023-01-24', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (40, DATE '2023-01-24', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (41, DATE '2023-01-24', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (42, DATE '2023-01-24', 2);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (43, DATE '2023-03-12', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (44, DATE '2023-03-12', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (45, DATE '2023-03-12', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (46, DATE '2023-03-12', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (47, DATE '2023-03-12', 4);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (48, DATE '2024-01-14', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (49, DATE '2024-01-14', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (50, DATE '2024-01-14', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (51, DATE '2024-01-14', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (52, DATE '2024-01-14', 3);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (53, DATE '2024-03-02', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (54, DATE '2024-03-02', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (55, DATE '2024-03-02', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (56, DATE '2024-03-02', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (57, DATE '2024-03-02', 4);

INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (58, DATE '2024-03-17', 3);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (59, DATE '2024-03-17', 5);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (60, DATE '2024-03-17', 2);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (61, DATE '2024-03-17', 4);
INSERT INTO GRADES_DETAILS (GRADE_ID, GRADE_DATE, GRADE_VALUE) VALUES (62, DATE '2024-03-17', 3);