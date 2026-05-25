-- INNER and LEFT Join
-- Task A: Get each student's name alongside the semester they're enrolled in. Use INNER JOIN.
SELECT t1.name, t2.semester
FROM students t1
JOIN enrollments t2 ON t1.id = t2.student_id;

-- Task B: Get all students and their enrollment semester — include students with no enrollments. Use LEFT JOIN.
SELECT t1.name, t2.semester
FROM students t1
LEFT JOIN enrollments t2 ON t1.id = t2.student_id;

-- Task C: Get each student's name and the subject title they're enrolled in. This requires joining three tables: students, enrollments, and subjects.
SELECT t1.name, t3.title
FROM students t1
JOIN enrollments t2 ON t1.id = t2.student_id 
JOIN subjects t3 ON t2.subject_id = t3.id;

-- Task D: Count how many subjects each student is enrolled in. Include students with zero enrollments — show 0, not NULL.
SELECT t1.name, COUNT(t2.subject_id)
FROM students t1
LEFT JOIN enrollments t2 ON t1.id = t2.student_id
GROUP BY t1.name;