# Task 4: Aggregate Functions and Grouping

## 📌 Project: Library Management System

### 🎯 Objective

The objective of this task is to practice using aggregate functions and grouping techniques to summarize and analyze data in a relational database.

This task focuses on calculating totals, averages, minimum and maximum values, counting records, grouping data, and filtering groups using the `HAVING` clause.

## 🛠️ Tools Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

## 📚 Database Used

**Library Management System**

This task continues using the database created in the previous tasks.

The database contains the following tables:

- Members
- Books
- Authors
- Book_Authors
- Loans

## 🔑 Key Concepts

- Aggregate Functions
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `ROUND()`
- `GROUP BY`
- `HAVING`
- `WHERE`
- `COUNT(DISTINCT)`
- Grouping by multiple columns
- Aggregate functions with `JOIN`

## 📝 Operations Performed

### 1. COUNT()

Used `COUNT()` to calculate the number of records in tables.

Examples include:

- Total number of members
- Total number of books
- Total number of loans

### 2. SUM()

Used `SUM()` to calculate the total quantity of books available in the library.

Example:

```sql
SELECT SUM(quantity) AS Total_Book_Quantity
FROM Books;
