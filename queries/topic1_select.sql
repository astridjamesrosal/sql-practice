-- Task A: Get all columns from students
SELECT * FROM students;

-- Task B: Get name and course from students
SELECT name, course FROM students;

-- Task C: Get name and scaled GPA
SELECT name, gpa * 100 AS gpa_scaled FROM students;