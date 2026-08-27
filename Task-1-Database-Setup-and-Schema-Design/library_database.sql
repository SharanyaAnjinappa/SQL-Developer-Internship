CREATE DATABASE library_db;
USE library_db;
-- 1. MEMBERS TABLE
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    membership_date DATE NOT NULL
);
-- 2. AUTHORS TABLE
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);
-- 3. BOOKS TABLE
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    publication_year INT,
    quantity INT NOT NULL DEFAULT 1,
    CHECK (quantity >= 0)
);
-- 4. BOOK_AUTHORS TABLE
-- Junction table for Books and Authors
CREATE TABLE Book_Authors (
    book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id)REFERENCES Books(book_id)ON DELETE CASCADE,
    FOREIGN KEY (author_id)REFERENCES Authors(author_id)ON DELETE CASCADE
);
-- 5. LOANS TABLE
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (member_id)REFERENCES Members(member_id)ON DELETE CASCADE,
    FOREIGN KEY (book_id)REFERENCES Books(book_id)ON DELETE CASCADE,
    CHECK (return_date IS NULL OR return_date >= loan_date)
);
