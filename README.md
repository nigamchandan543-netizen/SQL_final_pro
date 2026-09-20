# PR. Final Project — University Course Management System

**Project:** Final Project  
**Database:** MySQL 8+  
**Theme:** University Course Management System

---

## Objective

The **Final Project** aims to synthesize and apply a broad range of SQL concepts through comprehensive database design and query execution. It focuses on working with all types of SQL operations (CRUD, joins, subqueries, string and date manipulation, window functions, and CASE expressions) to create a functional database system for a **University Course Management System**.

Students implement a complete database with tables related to students, courses, instructors, enrollments, and departments, and perform complex SQL queries including CRUD, aggregations, filtering, sorting, subqueries, window functions, and CASE expressions.

---

## Project Overview

The University Course Management System has the following tables:

1. **Students** — information about students  
2. **Courses** — details of courses available at the university  
3. **Instructors** — information about course instructors  
4. **Enrollments** — which students are enrolled in which courses  
5. **Departments** — academic departments within the university  

---

## Database Schema

### 1. Students
| Field            | Type         |
|------------------|--------------|
| StudentID        | INT (PK)     |
| FirstName        | VARCHAR(80)  |
| LastName         | VARCHAR(80)  |
| Email            | VARCHAR(160) |
| BirthDate        | DATE         |
| EnrollmentDate   | DATE         |

### 2. Courses
| Field         | Type          |
|---------------|---------------|
| CourseID      | INT (PK)      |
| CourseName    | VARCHAR(120)  |
| DepartmentID  | INT           |
| Credits       | INT           |

### 3. Instructors
| Field         | Type          |
|---------------|---------------|
| InstructorID  | INT (PK)      |
| FirstName     | VARCHAR(80)   |
| LastName      | VARCHAR(80)   |
| Email         | VARCHAR(160)  |
| DepartmentID  | INT           |
| Salary        | DECIMAL(12,2) |

### 4. Enrollments
| Field          | Type |
|----------------|------|
| EnrollmentID   | INT (PK) |
| StudentID      | INT  |
| CourseID       | INT  |
| EnrollmentDate | DATE |

### 5. Departments
| Field           | Type         |
|-----------------|--------------|
| DepartmentID    | INT (PK)     |
| DepartmentName  | VARCHAR(100) |

---

## Sample Data (summary)

- **12 students** (enrollment years from 2019–2024 for Senior/Junior labels)  
- **12 courses** across Computer Science, Mathematics, Physics, Business  
- **7 instructors** with salaries (for max-salary query)  
- **43 enrollments** so some courses have >5 and >10 students  
- **4 departments**: Computer Science, Mathematics, Physics, Business  

Full inserts are in `final_project_mysql.sql`.

---

## Queries to Perform

| #  | Description |
|----|-------------|
| 1  | Perform **CRUD** operations on all tables |
| 2  | Retrieve students who enrolled **after 2022** |
| 3  | Retrieve courses offered by the **Mathematics** department (limit 5) |
| 4  | Number of students enrolled in each course, only courses with **more than 5** students |
| 5  | Students enrolled in **both** Introduction to SQL **and** Data Structures |
| 6  | Students enrolled in **either** Introduction to SQL **or** Data Structures |
| 7  | Average number of credits for all courses |
| 8  | Maximum salary of instructors in the **Computer Science** department |
| 9  | Count the number of students enrolled in each department |
| 10 | **INNER JOIN:** Students and their corresponding courses |
| 11 | **LEFT JOIN:** All students and their corresponding courses, if any |
| 12 | **Subquery:** Students enrolled in courses that have more than 10 students |
| 13 | Extract the **year** from the EnrollmentDate of students |
| 14 | Concatenate the instructor’s first and last name |
| 15 | Running total of students enrolled in courses |
| 16 | Label students as **'Senior'** or **'Junior'** (Senior if enrollment date is more than 4 years before current date) |

---

## How to Run (MySQL Workbench)

1. Open **MySQL Workbench** (MySQL **8.0+**).  
2. Open `final_project_mysql.sql`.  
3. Run the full script once (creates tables, loads data, runs all queries).  
4. To run a single query, select that block and execute it.

---

## Assumptions

1. **Salary** column was added to `Instructors` because Query 8 requires maximum instructor salary (not shown in the partial sample tables in the brief).  
2. Sample data was expanded beyond the 2-row examples so that:
   - Query 4 (courses with >5 students) and Query 12 (courses with >10 students) return rows  
   - Query 5 (students in **both** courses) returns multiple students  
   - Query 16 (Senior / Junior) has both labels  
3. **Senior** = `EnrollmentDate < CURRENT_DATE - 4 years`; otherwise **Junior**.  
4. Department names used exactly as in the brief: `Computer Science`, `Mathematics`.  
5. Course names used exactly: `Introduction to SQL`, `Data Structures`.  
6. MySQL 8.0+ is required for window functions (`SUM() OVER`).  

---

## Project Structure (GitHub)

```
final-project/
├── FINAL_PROJECT_README.md      (this file)
├── final_project_mysql.sql      (schema + seed + all queries)
└── screenshots/                 (optional result screenshots)
```

---

## Instructions Followed

- **Task Completion:** All 16 assigned tasks are implemented.  
- **Assumptions:** Documented in this README.  
- **GitHub:** Upload SQL file + README (and screenshots if any) and submit the repository link as instructed.  
- **Original work:** All SQL and documentation prepared for this assignment.

---

## Author

- **Project:** PR. Final Project — University Course Management System  
- **Focus:** CRUD, Joins, Subqueries, Aggregations, Date/String functions, Window functions, CASE  
- **Engine:** MySQL 8+
- 
