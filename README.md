# Data Transformer — SQL Project (PR. 2)

Interactive SQL learning project based on **Customers**, **Orders**, and **Employees** tables.  
Covers joins, subqueries, date/string functions, window functions, and CASE expressions.

---

## Objective

Practice and demonstrate core SQL skills by writing and running **17 queries** against a realistic sales / HR schema.

---

## Database Schema

### Customers
| Column            | Type         | Description              |
|-------------------|--------------|--------------------------|
| CustomerID        | INT (PK)     | Unique customer ID       |
| FirstName         | VARCHAR(80)  | First name               |
| LastName          | VARCHAR(80)  | Last name                |
| Email             | VARCHAR(160) | Email (may contain spaces for TRIM demo) |
| RegistrationDate  | DATE         | Date customer registered |

### Orders
| Column      | Type          | Description        |
|-------------|---------------|--------------------|
| OrderID     | INT (PK)      | Unique order ID    |
| CustomerID  | INT           | FK → Customers     |
| OrderDate   | DATE          | Date of order      |
| TotalAmount | DECIMAL(12,2) | Order total        |

### Employees
| Column      | Type          | Description     |
|-------------|---------------|-----------------|
| EmployeeID  | INT (PK)      | Unique employee |
| FirstName   | VARCHAR(80)   | First name      |
| LastName    | VARCHAR(80)   | Last name       |
| Department  | VARCHAR(80)   | Department name |
| HireDate    | DATE          | Hire date       |
| Salary      | DECIMAL(12,2) | Annual salary   |

---

## Sample Data — Tables

### 1. Customers

![Customers table](screenshots/screenshot_1_Customers.png)

### 2. Orders

![Orders table](screenshots/screenshot_2_Orders.png)

### 3. Employees

![Employees table](screenshots/screenshot_3_Employees.png)

---

## Queries (1–17)

| #  | Topic              | Description                                      |
|----|--------------------|--------------------------------------------------|
| 1  | INNER JOIN         | Orders with matching customer details            |
| 2  | LEFT JOIN          | All customers; orders if any (Elena → NULL)      |
| 3  | RIGHT JOIN         | All orders; customer if any                      |
| 4  | FULL OUTER JOIN    | All customers + all orders (MySQL: LEFT ∪ RIGHT) |
| 5  | Subquery           | Orders above average `TotalAmount`               |
| 6  | Subquery           | Employees above average `Salary`                 |
| 7  | Date               | Year / month / month name from `OrderDate`       |
| 8  | Date               | Days between order date and current date         |
| 9  | Date format        | Format `OrderDate` as `DD-Mon-YYYY`              |
| 10 | String             | Concatenate `FirstName` + `LastName`             |
| 11 | String             | Replace `John` → `Jonathan`                      |
| 12 | String             | `UPPER(FirstName)`, `LOWER(LastName)`            |
| 13 | String             | `TRIM(Email)` and length comparison              |
| 14 | Window             | Running total of `TotalAmount`                   |
| 15 | Window             | `RANK()` by `TotalAmount` DESC                   |
| 16 | CASE               | Discount: >1000 → 10%, >500 → 5%, else none      |
| 17 | CASE               | Salary band: High ≥75k, Medium ≥50k, else Low    |

---

## Important Query Results (Screenshots)

### Q1 — INNER JOIN

![INNER JOIN result](screenshots/screenshot_4_INNER_JOIN.png)

### Q2 — LEFT JOIN (Elena has no orders)

![LEFT JOIN result](screenshots/screenshot_5_LEFT_JOIN.png)

### Q16 — CASE discounts

![Discount CASE result](screenshots/screenshot_6_Discount_CASE.png)

### Q17 — CASE salary bands

![Salary bands result](screenshots/screenshot_7_Salary_Bands.png)

### Q15 — RANK() by TotalAmount

![RANK result](screenshots/screenshot_8_RANK.png)

---

## How to run (MySQL Workbench)

1. Open **MySQL Workbench** (MySQL **8.0+** required for window functions).
2. Create a connection and open a new SQL tab.
3. Copy the full script from `data_transformer_mysql.sql`.
4. Run the whole script once:
   - Creates tables
   - Loads sample data
   - Executes all 17 queries
5. To re-run only queries, select a single query block and execute.

### MySQL notes
- **FULL OUTER JOIN** is implemented as `LEFT JOIN … UNION … RIGHT JOIN` (MySQL has no native FULL OUTER JOIN).
- Date formatting uses `DATE_FORMAT(..., '%d-%b-%Y')`.
- Day difference uses `DATEDIFF(CURRENT_DATE, OrderDate)`.
- Name concatenation uses `CONCAT(...)`.

---

## Project structure (for GitHub)---

## Assumptions

1. Sample data is extended beyond the minimal assignment rows so queries 5, 6, 14–17 produce meaningful multi-row results.
2. Customer **Elena Vargas** has no orders (demonstrates LEFT JOIN NULLs).
3. Customer **Michael Torres** has leading/trailing spaces in email (demonstrates TRIM).
4. Two customers named **John** (Doe, Park) so REPLACE affects more than one row.
5. MySQL 8.0+ is assumed for `RANK()` and `SUM() OVER (...)`.
6. No foreign-key constraints are enforced in the script so RIGHT JOIN / orphan scenarios remain flexible for demos.

---

## Author / submission

- **Project:** Data Transformer (PR. 2)
- **Focus:** SQL joins, subqueries, functions, window functions, CASE
- **Engine used for practice:** MySQL 8+ (Workbench)

---

## License

Educational use only — free to copy and adapt for coursework.
