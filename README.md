# SQL Developer Internship

## 📌 About the Internship

This repository contains the tasks and projects completed as part of my **SQL Developer Internship**.

The internship focuses on developing practical skills in SQL and relational database management, including database design, schema creation, queries, data manipulation, normalization, relationships, and database concepts.

## 🛠️ Tools & Technologies

* MySQL
* MySQL Workbench
* SQL
* GitHub

## 📚 Tasks

### Task 1: Database Setup and Schema Design

**Domain:** Library Management System

In this task, I designed and implemented a relational database for a Library Management System.

**Topics covered:**

* Database creation
* Table creation using DDL
* Primary Keys
* Foreign Keys
* Constraints
* Composite Keys
* `AUTO_INCREMENT`
* Normalization
* One-to-Many relationships
* Many-to-Many relationships
* ER Diagram

**Entities created:**

* Members
* Books
* Authors
* Book_Authors
* Loans

**Deliverables:**

* SQL script
* ER Diagram
* Task documentation

📁 [View Task 1](./Task-1-Database-Setup-and-Schema-Design/)

---

### ✅ Task 2: Data Insertion and Handling NULLs

**Domain:** Library Management System

In this task, I populated the Library Management System database and practiced different Data Manipulation Language (DML) operations.

**Topics covered:**
- `INSERT`
- `UPDATE`
- `DELETE`
- `NULL` handling
- `IS NULL`
- `DEFAULT` values
- `WHERE` conditions
- Partial column insertion
- `INSERT ... SELECT`
- Data verification
- Data consistency

**Operations performed:**
- Inserted sample members, books, authors, and loan records
- Inserted records containing `NULL` values
- Used default values when inserting books
- Updated individual and multiple records
- Deleted a specific loan record using a `WHERE` condition
- Retrieved records containing `NULL`
- Practiced inserting data using `SELECT`

**Deliverables:**
- SQL script
- Task documentation

📁 [View Task 2](./Task-2-Data-Insertion-and-Handling-Nulls/)

---

### Task 3: Writing Basic SELECT Queries

**Domain:** Library Management System

In this task, I practiced retrieving and filtering data from database tables using SQL `SELECT` queries.

**Topics covered:**

* `SELECT *`
* Selecting specific columns
* `WHERE`
* `AND`
* `OR`
* `LIKE`
* `BETWEEN`
* `IN`
* `DISTINCT`
* `ORDER BY`
* `ASC`
* `DESC`
* `LIMIT`
* Aliasing
* `IS NULL`

**Operations performed:**

* Retrieved all columns and records using `SELECT *`
* Selected specific columns from tables
* Filtered records using `WHERE`
* Combined conditions using `AND` and `OR`
* Performed pattern matching using `LIKE`
* Filtered data within a range using `BETWEEN`
* Used `IN` to match multiple values
* Retrieved unique values using `DISTINCT`
* Sorted data using `ORDER BY`
* Used `LIMIT` to restrict the number of rows returned
* Used aliases to provide meaningful column names
* Retrieved records containing `NULL` values using `IS NULL`

**Deliverables:**

* SQL script
* Task documentation

📁 [View Task 3](./Task-3-Writing-Basic-SELECT-Queries/)

---

### Task 4: Aggregate Functions and Grouping

**Domain:** Library Management System

In this task, I practiced using aggregate functions and grouping techniques to summarize and analyze data in the Library Management System.

**Topics covered:**

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `ROUND()`
* `GROUP BY`
* `HAVING`
* `WHERE` with grouping
* `COUNT(DISTINCT)`
* Grouping by multiple columns
* Aggregate functions with `JOIN`

**Operations performed:**

* Counted total members, books, and loans
* Calculated the total quantity of books using `SUM()`
* Calculated average book quantity using `AVG()`
* Found minimum and maximum values using `MIN()` and `MAX()`
* Grouped books by publication year and quantity
* Counted loans made by each member
* Filtered grouped results using `HAVING`
* Combined `WHERE` with `GROUP BY`
* Counted distinct publication years and members
* Used aggregate functions together with `JOIN`
* Used `ROUND()` to format average values

**Deliverables:**

* SQL script
* Task documentation

📁 [View Task 4](./Task-4-Aggregate-Functions-and-Grouping/)

---

### Task 5: SQL Joins

**Domain:** Library Management System

In this task, I practiced combining data from multiple related tables using different types of SQL joins.

**Topics covered:**
* `INNER JOIN`
* `LEFT JOIN`
* `RIGHT JOIN`
* `FULL OUTER JOIN`
* `CROSS JOIN`
* `SELF JOIN`
* Multiple-table joins
* `UNION`
* NULL handling with joins
* `DISTINCT`

**Operations performed:**
* Used INNER JOIN to retrieve matching records
* Used LEFT JOIN to include all records from the left table
* Used RIGHT JOIN to include all records from the right table
* Simulated FULL OUTER JOIN using LEFT JOIN, RIGHT JOIN, and UNION because MySQL does not directly support FULL OUTER JOIN
* Joined multiple tables to retrieve member, book, and author information
* Used CROSS JOIN to demonstrate Cartesian products
* Used SELF JOIN to compare records within the same table
* Combined joins with `WHERE`, `ORDER BY`, NULL checks, and `DISTINCT`

**Deliverables:**
* SQL script
* Task documentation

📁 [View Task 5](./Task-5-SQL-Joins/)

---

### Task 6

*To be added.*

---

## 🎯 Learning Objectives

Through these tasks, I am developing practical knowledge of:

* Relational database design
* SQL database creation
* Table and schema design
* Primary and foreign keys
* Constraints
* Normalization
* Data insertion and manipulation
* NULL handling
* Data filtering and sorting
* Aggregate functions
* Grouping and filtering grouped data
* SQL joins and relationships
* Multi-table queries
* Database management using MySQL Workbench

## 📂 Repository Structure

```text
SQL-Developer-Internship/
│
├── README.md
│
├── Task-1-Database-Setup-and-Schema-Design/
│   ├── README.md
│   ├── library_database.sql
│   └── ER_Diagram.png
│
├── Task-2-Data-Insertion-and-Handling-Nulls/
│   ├── README.md
│   └── task2_data_handling.sql
│
├── Task-3-Writing-Basic-SELECT-Queries/
│   ├── README.md
│   └── task3_select_queries.sql
│
├── Task-4-Aggregate-Functions-and-Grouping/
│   ├── README.md
│   └── task4_aggregate_grouping.sql
│
├── Task-5-SQL-Joins/
│   ├── README.md
│   └── task5_sql_joins.sql
│
└── Task-6/
    └── ...
