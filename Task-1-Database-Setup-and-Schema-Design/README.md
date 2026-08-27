# Task 1: Database Setup and Schema Design

## 📌 Project: Library Management System

### 🎯 Objective

The objective of this task is to design and implement a well-structured relational database using MySQL. The task focuses on creating a database, designing tables, defining primary and foreign keys, establishing relationships between entities, and applying database constraints and normalization concepts.

### 🛠️ Tools Used

* MySQL
* MySQL Workbench
* GitHub

### 📚 Domain

**Library Management System**

The database is designed to manage library members, books, authors, and book borrowing records.

### 🗂️ Entities

The database consists of the following entities:

#### 1. Members

Stores information about members who borrow books from the library.

**Attributes:**

* `member_id` – Primary Key
* `name`
* `email`
* `phone`
* `membership_date`

#### 2. Books

Stores information about books available in the library.

**Attributes:**

* `book_id` – Primary Key
* `title`
* `isbn`
* `publication_year`
* `quantity`

#### 3. Authors

Stores information about the authors of books.

**Attributes:**

* `author_id` – Primary Key
* `author_name`

#### 4. Book_Authors

A junction table used to connect books and authors.

**Attributes:**

* `book_id` – Primary Key, Foreign Key
* `author_id` – Primary Key, Foreign Key

This table resolves the **many-to-many relationship** between Books and Authors.

#### 5. Loans

Stores information about books borrowed by library members.

**Attributes:**

* `loan_id` – Primary Key
* `member_id` – Foreign Key
* `book_id` – Foreign Key
* `loan_date`
* `return_date`

### 🔗 Relationships

The database contains the following relationships:

* One Member can have many Loans → **One-to-Many (1:M)**
* One Book can appear in many Loans → **One-to-Many (1:M)**
* One Book can have many Authors.
* One Author can write many Books.
* Books and Authors have a **Many-to-Many (M:N)** relationship.
* The `Book_Authors` junction table is used to resolve the M:N relationship.

### 🧩 Database Design

```text
MEMBERS  1 ───────────< LOANS >─────────── 1 BOOKS

BOOKS    1 ───────────< BOOK_AUTHORS >──── 1 AUTHORS
```

### 🔑 Key Concepts Used

* DDL (Data Definition Language)
* Database and table creation
* Primary Keys
* Foreign Keys
* Composite Keys
* Constraints
* `NOT NULL`
* `UNIQUE`
* `CHECK`
* `DEFAULT`
* `AUTO_INCREMENT`
* Normalization
* One-to-Many Relationships
* Many-to-Many Relationships
* ER Diagrams

### 📐 Normalization

The database follows normalization principles to reduce data redundancy and maintain data integrity.

For example, author information is stored separately in the `Authors` table rather than repeatedly storing author names in the `Books` table.

The `Book_Authors` table is used to manage the many-to-many relationship between books and authors without duplicating book or author information.

### 📊 ER Diagram

The Entity-Relationship Diagram represents the tables, attributes, primary keys, foreign keys, and relationships in the Library Management System.

The complete ER diagram is available in:

**`ER_Diagram.png`**

### 📁 Files Included

```text
Task-1-Database-Setup-and-Schema-Design/
│
├── README.md
├── library_database.sql
└── ER_Diagram.png
```

### ✅ Outcome

A well-structured relational database schema for a Library Management System was successfully designed and implemented using MySQL Workbench.

The project demonstrates database creation, table design, primary and foreign keys, constraints, normalization, composite keys, and relationships between entities.

