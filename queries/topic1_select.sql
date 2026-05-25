-- SELECT 
-- Task A: Get all columns from students
SELECT * FROM students;

-- Task B: Get name and course from students
SELECT name, course FROM students;

-- Task C: Get name and scaled GPA
SELECT name, gpa * 100 AS gpa_scaled FROM students;

-- WHERE
-- Task A: Get the name and course of all BSIT students.
SELECT name, course FROM students WHERE course = 'BSIT';

-- Task B: Get the name and gpa of students whose GPA is below 2.0.
SELECT name, gpa FROM students WHERE gpa < 2.0;

-- Task C: Get the name and year_level of BSIT students who are in year 1.
SELECT name, year_level FROM students WHERE course = 'BSIT' AND year_level = 1;

-- Task D: Get the name of any student whose GPA is NULL.
SELECT name FROM students WHERE gpa IS NULL;

-- ORDER BY
-- Task A: Get name and gpa of all students, ordered by GPA from highest to lowest.
SELECT name, gpa FROM students ORDER BY gpa DESC;

-- Task B: Get name and course, ordered by course name alphabetically.
SELECT name, course FROM students ORDER BY course ASC;

-- Task C: Get name, course, and gpa of all students, ordered by course ascending, then GPA descending within each course.
SELECT name, course, gpa FROM students ORDER BY course ASC, gpa DESC;

-- Task D: Get name and gpa of BSIT students only, ordered by GPA ascending.
SELECT name, gpa FROM students WHERE course = 'BSIT' ORDER BY gpa ASC;