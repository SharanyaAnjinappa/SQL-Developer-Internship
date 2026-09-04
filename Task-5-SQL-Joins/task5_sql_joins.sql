-- Task 5: SQL Joins
USE library_db;

-- 1. INNER JOIN

SELECT
    m.member_id,
    m.name AS Member_Name,
    l.loan_id,
    l.book_id,
    l.loan_date,
    l.return_date
FROM Members m
INNER JOIN Loans l
    ON m.member_id = l.member_id;


-- 2. INNER JOIN - Members, Loans and Books

SELECT
    m.name AS Member_Name,
    b.title AS Book_Title,
    l.loan_date,
    l.return_date
FROM Members m
INNER JOIN Loans l
    ON m.member_id = l.member_id
INNER JOIN Books b
    ON l.book_id = b.book_id;


-- 3. LEFT JOIN

SELECT
    m.member_id,
    m.name AS Member_Name,
    l.loan_id,
    l.loan_date
FROM Members m
LEFT JOIN Loans l
    ON m.member_id = l.member_id;


-- 4. LEFT JOIN - Members and Books

SELECT
    m.name AS Member_Name,
    b.title AS Book_Title,
    l.loan_date
FROM Members m
LEFT JOIN Loans l
    ON m.member_id = l.member_id
LEFT JOIN Books b
    ON l.book_id = b.book_id;


-- 5. RIGHT JOIN

SELECT
    b.book_id,
    b.title AS Book_Title,
    l.loan_id,
    l.loan_date
FROM Loans l
RIGHT JOIN Books b
    ON l.book_id = b.book_id;


-- 6. RIGHT JOIN - Authors and Book_Authors

SELECT
    a.author_id,
    a.author_name,
    ba.book_id
FROM Book_Authors ba
RIGHT JOIN Authors a
    ON ba.author_id = a.author_id;


-- 7. FULL OUTER JOIN using LEFT JOIN and RIGHT JOIN

SELECT
    m.member_id,
    m.name AS Member_Name,
    l.loan_id,
    l.loan_date
FROM Members m
LEFT JOIN Loans l
    ON m.member_id = l.member_id

UNION

SELECT
    m.member_id,
    m.name AS Member_Name,
    l.loan_id,
    l.loan_date
FROM Members m
RIGHT JOIN Loans l
    ON m.member_id = l.member_id;


-- 8. FULL OUTER JOIN - Books and Loans

SELECT
    b.book_id,
    b.title AS Book_Title,
    l.loan_id,
    l.loan_date
FROM Books b
LEFT JOIN Loans l
    ON b.book_id = l.book_id

UNION

SELECT
    b.book_id,
    b.title AS Book_Title,
    l.loan_id,
    l.loan_date
FROM Books b
RIGHT JOIN Loans l
    ON b.book_id = l.book_id;


-- 9. JOINING MORE THAN TWO TABLES

SELECT
    m.name AS Member_Name,
    b.title AS Book_Title,
    a.author_name AS Author_Name,
    l.loan_date
FROM Members m
INNER JOIN Loans l
    ON m.member_id = l.member_id
INNER JOIN Books b
    ON l.book_id = b.book_id
INNER JOIN Book_Authors ba
    ON b.book_id = ba.book_id
INNER JOIN Authors a
    ON ba.author_id = a.author_id;


-- 10. JOIN WITH WHERE

SELECT
    m.name AS Member_Name,
    b.title AS Book_Title,
    b.publication_year
FROM Members m
INNER JOIN Loans l
    ON m.member_id = l.member_id
INNER JOIN Books b
    ON l.book_id = b.book_id
WHERE b.publication_year > 1950;


-- 11. JOIN WITH ORDER BY

SELECT
    m.name AS Member_Name,
    b.title AS Book_Title,
    l.loan_date
FROM Members m
INNER JOIN Loans l
    ON m.member_id = l.member_id
INNER JOIN Books b
    ON l.book_id = b.book_id
ORDER BY l.loan_date DESC;


-- 12. CROSS JOIN

SELECT
    m.name AS Member_Name,
    b.title AS Book_Title
FROM Members m
CROSS JOIN Books b;


-- 13. SELF JOIN

SELECT
    m1.name AS Member_1,
    m2.name AS Member_2
FROM Members m1
INNER JOIN Members m2
    ON m1.member_id < m2.member_id;


-- 14. LEFT JOIN WITH NULL

SELECT
    m.member_id,
    m.name AS Member_Name
FROM Members m
LEFT JOIN Loans l
    ON m.member_id = l.member_id
WHERE l.loan_id IS NULL;

-- 15. INNER JOIN WITH DISTINCT

SELECT DISTINCT
    m.member_id,
    m.name AS Member_Name
FROM Members m
INNER JOIN Loans l
    ON m.member_id = l.member_id;