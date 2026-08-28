# Task 2: Data Insertion and Handling NULLs

## 📌 Project: Library Management System

### 🎯 Objective

The objective of this task is to practice inserting, updating, and deleting data in a relational database. This task also focuses on handling `NULL` values, using default values, and maintaining clean and consistent data.

### 🛠️ Tools Used

- MySQL
- MySQL Workbench
- GitHub

### 📚 Database Used

**Library Management System**

This task continues the database created in **Task 1**.

The database contains the following tables:

- Members
- Books
- Authors
- Book_Authors
- Loans

### 🔑 Key Concepts

- DML (Data Manipulation Language)
- `INSERT`
- `UPDATE`
- `DELETE`
- `NULL`
- `IS NULL`
- `DEFAULT`
- `WHERE`
- `INSERT ... SELECT`
- `ON DELETE CASCADE`

## 📝 Operations Performed

### 1. INSERT

Records were inserted into the `Members`, `Authors`, `Books`, `Book_Authors`, and `Loans` tables using the `INSERT INTO` statement.

Different insertion methods were practiced, including inserting complete records and inserting values into specific columns.

### 2. Handling NULL Values

`NULL` values were used to represent missing or unavailable information.

Examples include:

- Members without a phone number
- Loans where the book has not yet been returned

The `IS NULL` condition was used to find records containing `NULL` values.

Example:

```sql
SELECT *
FROM Members
WHERE phone IS NULL;
