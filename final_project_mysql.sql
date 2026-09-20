

DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Instructors;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
  DepartmentID INT PRIMARY KEY,
  DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE Students (
  StudentID INT PRIMARY KEY,
  FirstName VARCHAR(80) NOT NULL,
  LastName VARCHAR(80) NOT NULL,
  Email VARCHAR(160) NOT NULL,
  BirthDate DATE NOT NULL,
  EnrollmentDate DATE NOT NULL
);

CREATE TABLE Instructors (
  InstructorID INT PRIMARY KEY,
  FirstName VARCHAR(80) NOT NULL,
  LastName VARCHAR(80) NOT NULL,
  Email VARCHAR(160) NOT NULL,
  DepartmentID INT NOT NULL,
  Salary DECIMAL(12,2) NOT NULL
);

CREATE TABLE Courses (
  CourseID INT PRIMARY KEY,
  CourseName VARCHAR(120) NOT NULL,
  DepartmentID INT NOT NULL,
  Credits INT NOT NULL
);

CREATE TABLE Enrollments (
  EnrollmentID INT PRIMARY KEY,
  StudentID INT NOT NULL,
  CourseID INT NOT NULL,
  EnrollmentDate DATE NOT NULL
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
  (1, 'Computer Science'),
  (2, 'Mathematics'),
  (3, 'Physics'),
  (4, 'Business');

INSERT INTO Students (StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate) VALUES
  (1,  'John',    'Doe',     'john.doe@email.com',     '2000-01-15', '2022-08-01'),
  (2,  'Jane',    'Smith',   'jane.smith@email.com',   '1999-05-25', '2021-08-01'),
  (3,  'Robert',  'Chen',    'r.chen@email.com',       '2001-03-10', '2023-01-15'),
  (4,  'Priya',   'Patel',   'priya.patel@email.com',  '2000-11-02', '2022-09-01'),
  (5,  'Michael', 'Torres',  'm.torres@email.com',     '1998-07-20', '2020-08-15'),
  (6,  'Elena',   'Vargas',  'elena.vargas@email.com', '2002-02-14', '2023-08-20'),
  (7,  'David',   'Kim',     'd.kim@email.com',        '2001-12-05', '2022-01-10'),
  (8,  'Sara',    'Park',    'sara.park@email.com',    '1999-09-18', '2021-08-01'),
  (9,  'James',   'Wilson',  'j.wilson@email.com',     '2000-04-22', '2023-02-01'),
  (10, 'Aisha',   'Rahman',  'a.rahman@email.com',     '2001-06-30', '2024-01-15'),
  (11, 'Leo',     'Santos',  'leo.santos@email.com',   '1997-08-12', '2019-08-01'),
  (12, 'Nina',    'Volkov',  'n.volkov@email.com',     '2002-10-08', '2024-08-01');

INSERT INTO Instructors (InstructorID, FirstName, LastName, Email, DepartmentID, Salary) VALUES
  (1, 'Alice',  'Johnson', 'alice.johnson@uni.edu', 1, 85000.00),
  (2, 'Bob',    'Lee',     'bob.lee@uni.edu',       2, 78000.00),
  (3, 'Carol',  'Nguyen',  'carol.nguyen@uni.edu',  1, 92000.00),
  (4, 'Dan',    'Martinez','dan.martinez@uni.edu',  1, 70000.00),
  (5, 'Eve',    'Brown',   'eve.brown@uni.edu',     2, 81000.00),
  (6, 'Frank',  'Garcia',  'frank.garcia@uni.edu',  3, 75000.00),
  (7, 'Grace',  'Kim',     'grace.kim@uni.edu',     4, 68000.00);

INSERT INTO Courses (CourseID, CourseName, DepartmentID, Credits) VALUES
  (101, 'Introduction to SQL', 1, 3),
  (102, 'Data Structures',     2, 4),
  (103, 'Algorithms',          1, 4),
  (104, 'Database Systems',    1, 3),
  (105, 'Linear Algebra',      2, 3),
  (106, 'Calculus I',          2, 4),
  (107, 'Calculus II',         2, 4),
  (108, 'Discrete Math',       2, 3),
  (109, 'Web Development',     1, 3),
  (110, 'Machine Learning',    1, 4),
  (111, 'Quantum Mechanics',   3, 4),
  (112, 'Business Analytics',  4, 3);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES
  (1,  1,  101, '2022-08-15'),
  (2,  2,  101, '2021-09-01'),
  (3,  3,  101, '2023-02-01'),
  (4,  4,  101, '2022-09-10'),
  (5,  5,  101, '2020-09-01'),
  (6,  6,  101, '2023-09-01'),
  (7,  7,  101, '2022-02-01'),
  (8,  8,  101, '2021-09-01'),
  (9,  9,  101, '2023-02-15'),
  (10, 10, 101, '2024-02-01'),
  (11, 11, 101, '2019-09-01'),
  (12, 1,  102, '2022-08-20'),
  (13, 2,  102, '2021-09-05'),
  (14, 3,  102, '2023-02-05'),
  (15, 5,  102, '2020-09-10'),
  (16, 7,  102, '2022-02-10'),
  (17, 8,  102, '2021-09-10'),
  (18, 11, 102, '2019-09-05'),
  (19, 1,  103, '2023-01-10'),
  (20, 4,  103, '2023-01-12'),
  (21, 5,  103, '2021-01-15'),
  (22, 7,  103, '2022-08-01'),
  (23, 9,  103, '2023-08-01'),
  (24, 11, 103, '2020-01-20'),
  (25, 2,  104, '2022-01-10'),
  (26, 3,  104, '2023-08-01'),
  (27, 6,  104, '2024-01-10'),
  (28, 8,  104, '2022-01-15'),
  (29, 10, 104, '2024-08-01'),
  (30, 12, 104, '2024-08-15'),
  (31, 2,  105, '2021-09-20'),
  (32, 4,  105, '2022-09-20'),
  (33, 8,  105, '2021-09-25'),
  (34, 3,  106, '2023-01-20'),
  (35, 6,  106, '2023-09-10'),
  (36, 9,  106, '2023-02-10'),
  (37, 10, 106, '2024-02-10'),
  (38, 12, 106, '2024-09-01'),
  (39, 1,  109, '2023-08-01'),
  (40, 4,  109, '2023-08-05'),
  (41, 7,  109, '2023-08-10'),
  (42, 5,  110, '2022-01-20'),
  (43, 11, 110, '2021-01-25');

-- 1. CRUD
SELECT * FROM Students LIMIT 5;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments LIMIT 10;
SELECT * FROM Departments;

UPDATE Students SET Email = 'john.doe.updated@email.com' WHERE StudentID = 1;
UPDATE Courses SET Credits = 4 WHERE CourseID = 101;
UPDATE Students SET Email = 'john.doe@email.com' WHERE StudentID = 1;
UPDATE Courses SET Credits = 3 WHERE CourseID = 101;

-- 2. Students enrolled after 2022
SELECT StudentID, FirstName, LastName, Email, EnrollmentDate
FROM Students
WHERE EnrollmentDate > '2022-12-31'
ORDER BY EnrollmentDate;

-- 3. Mathematics courses (limit 5)
SELECT c.CourseID, c.CourseName, c.Credits, d.DepartmentName
FROM Courses c
INNER JOIN Departments d ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;

-- 4. Courses with more than 5 students
SELECT c.CourseID, c.CourseName, COUNT(e.StudentID) AS StudentCount
FROM Courses c
INNER JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName
HAVING COUNT(e.StudentID) > 5
ORDER BY StudentCount DESC;

-- 5. Students in BOTH Introduction to SQL AND Data Structures
SELECT s.StudentID, s.FirstName, s.LastName, s.Email
FROM Students s
WHERE s.StudentID IN (
  SELECT e.StudentID FROM Enrollments e
  INNER JOIN Courses c ON e.CourseID = c.CourseID
  WHERE c.CourseName = 'Introduction to SQL'
)
AND s.StudentID IN (
  SELECT e.StudentID FROM Enrollments e
  INNER JOIN Courses c ON e.CourseID = c.CourseID
  WHERE c.CourseName = 'Data Structures'
)
ORDER BY s.StudentID;

-- 6. Students in EITHER Introduction to SQL OR Data Structures
SELECT DISTINCT s.StudentID, s.FirstName, s.LastName, s.Email
FROM Students s
INNER JOIN Enrollments e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures')
ORDER BY s.StudentID;

-- 7. Average credits
SELECT ROUND(AVG(Credits), 2) AS AverageCredits
FROM Courses;

-- 8. Max salary — Computer Science instructors
SELECT MAX(i.Salary) AS MaxSalary
FROM Instructors i
INNER JOIN Departments d ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';

-- 9. Student count per department
SELECT d.DepartmentID, d.DepartmentName, COUNT(DISTINCT e.StudentID) AS StudentCount
FROM Departments d
INNER JOIN Courses c ON d.DepartmentID = c.DepartmentID
INNER JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY StudentCount DESC;

-- 10. INNER JOIN — students and courses
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseID, c.CourseName, e.EnrollmentDate
FROM Students s
INNER JOIN Enrollments e ON s.StudentID = e.StudentID
INNER JOIN Courses c ON e.CourseID = c.CourseID
ORDER BY s.StudentID, c.CourseID;

-- 11. LEFT JOIN — all students and courses
SELECT s.StudentID, s.FirstName, s.LastName, c.CourseID, c.CourseName, e.EnrollmentDate
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
LEFT JOIN Courses c ON e.CourseID = c.CourseID
ORDER BY s.StudentID, c.CourseID;

-- 12. Subquery — students in courses with > 10 students
SELECT DISTINCT s.StudentID, s.FirstName, s.LastName, s.Email
FROM Students s
INNER JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.CourseID IN (
  SELECT CourseID FROM Enrollments
  GROUP BY CourseID
  HAVING COUNT(StudentID) > 10
)
ORDER BY s.StudentID;

-- 13. Year from EnrollmentDate
SELECT StudentID, FirstName, LastName, EnrollmentDate,
       YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students
ORDER BY EnrollmentYear, StudentID;

-- 14. Instructor full name
SELECT InstructorID, FirstName, LastName,
       CONCAT(FirstName, ' ', LastName) AS FullName,
       Email, DepartmentID
FROM Instructors
ORDER BY InstructorID;

-- 15. Running total of students enrolled
SELECT c.CourseID, c.CourseName,
       COUNT(e.StudentID) AS StudentsInCourse,
       SUM(COUNT(e.StudentID)) OVER (ORDER BY c.CourseID) AS RunningTotalStudents
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName
ORDER BY c.CourseID;

-- 16. Senior / Junior label
SELECT StudentID, FirstName, LastName, EnrollmentDate,
  CASE
    WHEN EnrollmentDate < DATE_SUB(CURRENT_DATE, INTERVAL 4 YEAR)
      THEN 'Senior'
    ELSE 'Junior'
  END AS StudentLabel
FROM Students
ORDER BY EnrollmentDate;
