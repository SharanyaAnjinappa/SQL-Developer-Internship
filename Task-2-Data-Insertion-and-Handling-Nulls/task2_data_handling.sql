-- Task 2: Data Insertion and Handling NULLs
USE library_db;

-- 1. INSERT DATA INTO MEMBERS
-- Insert members with all column values
INSERT INTO Members
    (name, email, phone, membership_date)
VALUES
    ('Rahul Sharma', 'rahul@gmail.com', '9876543210', '2026-01-10'),
    ('Priya Singh', 'priya@gmail.com', '9876543211', '2026-02-15'),
    ('Arun Kumar', 'arun@gmail.com', '9876543212', '2026-03-20'),
    ('Sneha Rao', 'sneha@gmail.com', '9876543213', '2026-04-05');
-- Insert a member with NULL phone number
INSERT INTO Members
    (name, email, phone, membership_date)
VALUES
    ('Anjali Patel', 'anjali@gmail.com', NULL, '2026-05-12');
-- Insert values into specific columns only
-- phone is omitted, so its value becomes NULL
INSERT INTO Members
    (name, email, membership_date)
VALUES
    ('Vikram Das', 'vikram@gmail.com', '2026-06-18');

-- 2. INSERT DATA INTO AUTHORS

INSERT INTO Authors
    (author_name)
VALUES
    ('R. K. Narayan'),
    ('J. K. Rowling'),
    ('George Orwell'),
    ('Chetan Bhagat'),
    ('Ruskin Bond');

-- 3. INSERT DATA INTO BOOKS

INSERT INTO Books
    (title, isbn, publication_year, quantity)
VALUES
    ('Malgudi Days', '9780143039653', 1943, 5),
    ('Harry Potter and the Philosopher Stone', '9780747532699', 1997, 4),
    ('1984', '9780451524935', 1949, 6),
    ('Five Point Someone', '9788129135495', 2004, 3),
    ('The Room on the Roof', '9788171675357', 1956, 2);

-- Insert a book without specifying quantity
-- DEFAULT value (1) will be used
INSERT INTO Books
    (title, isbn, publication_year)
VALUES
    ('The Blue Umbrella', '9788129104590', 1974);

-- 4. INSERT DATA INTO BOOK_AUTHORS

INSERT INTO Book_Authors
    (book_id, author_id)
VALUES
    (1, 1),  -- Malgudi Days - R. K. Narayan
    (2, 2),  -- Harry Potter - J. K. Rowling
    (3, 3),  -- 1984 - George Orwell
    (4, 4),  -- Five Point Someone - Chetan Bhagat
    (5, 5),  -- The Room on the Roof - Ruskin Bond
    (6, 5);  -- The Blue Umbrella - Ruskin Bond

-- 5. INSERT DATA INTO LOANS

INSERT INTO Loans
    (member_id, book_id, loan_date, return_date)
VALUES
    (1, 1, '2026-07-01', '2026-07-10'),
    (2, 2, '2026-07-03', '2026-07-12'),
    (3, 3, '2026-07-05', NULL),
    (4, 4, '2026-07-08', '2026-07-15'),
    (5, 5, '2026-07-10', NULL);


-- 6. VIEW INSERTED DATA
SELECT * FROM Members;
SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Book_Authors;
SELECT * FROM Loans;

-- 7. HANDLING NULL VALUES
-- Find members whose phone number is NULL
SELECT *FROM Members
WHERE phone IS NULL;

-- Find books that have not yet been returned
SELECT *FROM Loans
WHERE return_date IS NULL;

-- 8. UPDATE DATA
-- Update one member's phone number
UPDATE Members
SET phone = '9988776655'
WHERE member_id = 5;

-- Update multiple rows
-- Increase the quantity of books that currently have quantity <= 3
UPDATE Books
SET quantity = quantity + 1
WHERE book_id IN (4, 6);

SELECT *
FROM Books
WHERE book_id IN (4, 6);

-- Update a NULL return date
-- Mark the book as returned
UPDATE Loans
SET return_date = '2026-07-20'
WHERE loan_id = 3;

-- 9. VERIFY UPDATED DATA

SELECT * FROM Members
WHERE member_id = 5;

SELECT * FROM Books
WHERE quantity <= 5;

SELECT * FROM Loans;

-- 10. DELETE DATA
-- Delete a specific loan record
-- WHERE condition prevents deleting all rows
DELETE FROM Loans
WHERE loan_id = 5;

-- 11. VERIFY DELETION

SELECT * FROM Loans;

-- 12. INSERT USING SELECT
-- Create a temporary example table

CREATE TEMPORARY TABLE NewAuthors (
    author_name VARCHAR(100)
);

INSERT INTO NewAuthors
    (author_name)
VALUES
    ('Khaled Hosseini'),
    ('Agatha Christie');

-- Insert data into Authors using SELECT
INSERT INTO Authors (author_name) SELECT author_name
FROM NewAuthors;

-- Verify
SELECT * FROM Authors;

-- 13. FINAL DATA CHECK
SELECT * FROM Members;
SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Book_Authors;
SELECT * FROM Loans;