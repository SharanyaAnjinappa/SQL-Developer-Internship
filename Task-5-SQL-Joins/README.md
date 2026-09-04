# Task 5: SQL Joins

## 📌 Project: Library Management System

### 🎯 Objective

The objective of this task is to learn how to combine data from multiple related tables using different types of SQL joins.

This task focuses on understanding relationships between tables and retrieving related data using JOIN operations.

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

- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `FULL OUTER JOIN`
- `CROSS JOIN`
- `SELF JOIN`
- Multiple-table joins
- Join conditions
- `UNION`
- `NULL` handling with joins
- `DISTINCT`

## 📝 Operations Performed

### 1. INNER JOIN

Used `INNER JOIN` to retrieve records that have matching values in both tables.

For example, members were joined with their loan records.

### 2. LEFT JOIN

Used `LEFT JOIN` to retrieve all records from the left table, including records that do not have a matching record in the right table.

For example, all library members can be displayed even if they have not borrowed any books.

### 3. RIGHT JOIN

Used `RIGHT JOIN` to retrieve all records from the right table, including records without a matching record in the left table.

For example, all books can be displayed even if they have not been borrowed.

### 4. FULL OUTER JOIN

MySQL does not directly support `FULL OUTER JOIN`.

It was demonstrated using a combination of:

```sql
LEFT JOIN
UNION
RIGHT JOIN
