CREATE DATABASE student_management;

USE student_management;
CREATE TABLE students
(
    id INT PRIMARY KEY,
    studentname VARCHAR(50),
    department VARCHAR(50),
    semester INT,
    marks INT
);
INSERT INTO students
(id, studentname, department, semester, marks)
VALUES
(1, 'Ayesha', 'CSE', 2, 88),
(2, 'Sakib', 'EEE', 3, 76),
(3, 'Mariya', 'BBA', 1, 92),
(4, 'Hasan', 'CSE', 4, 81),
(5, 'Nabila', 'Civil', 2, 85),
(6, 'Rafi', 'EEE', 5, 73),
(7, 'Sumaiya', 'CSE', 3, 95),
(8, 'Imran', 'BBA', 4, 79),
(9, 'Tania', 'Civil', 1, 90),
(10, 'Fahad', 'EEE', 2, 84);
SELECT * FROM students;
SELECT * FROM students
WHERE studentname = 'Ayesha';
UPDATE students
SET marks = 95
WHERE id = 1;

SELECT * FROM students;
DELETE FROM students
WHERE id = 10;

SELECT * FROM students;
SELECT COUNT(*) AS total_students
FROM students;
SELECT AVG(marks) AS average_marks
FROM students;
SELECT
MAX(marks) AS highest_mark,
MIN(marks) AS lowest_marks
FROM students;
SELECT department,
COUNT(*) AS total_students
FROM students
GROUP BY department;
SELECT * FROM students;