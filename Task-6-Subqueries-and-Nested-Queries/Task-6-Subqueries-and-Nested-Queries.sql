USE library_db;

-- 1. Scalar subquery
SELECT title, quantity
FROM Books
WHERE quantity > (SELECT AVG(quantity) FROM Books);

-- 2. Subquery with WHERE
SELECT name, email
FROM Members
WHERE member_id IN (
    SELECT member_id
    FROM Loans
);

-- 3. Subquery with IN
SELECT title, publication_year
FROM Books
WHERE book_id IN (
    SELECT book_id
    FROM Loans
);

-- 4. Subquery with =
SELECT title, quantity
FROM Books
WHERE quantity = (
    SELECT MAX(quantity)
    FROM Books
);

-- 5. Subquery with EXISTS
SELECT name, email
FROM Members m
WHERE EXISTS (
    SELECT 1
    FROM Loans l
    WHERE l.member_id = m.member_id
);

-- 6. Subquery with NOT EXISTS
SELECT name, email
FROM Members m
WHERE NOT EXISTS (
    SELECT 1
    FROM Loans l
    WHERE l.member_id = m.member_id
);

-- 7. Correlated subquery
SELECT b.title, b.quantity
FROM Books b
WHERE b.quantity > (
    SELECT AVG(b2.quantity)
    FROM Books b2
    WHERE b2.publication_year = b.publication_year
);

-- 8. Subquery in SELECT
SELECT
    m.name AS Member_Name,
    (SELECT COUNT(*)
     FROM Loans l
     WHERE l.member_id = m.member_id) AS Number_Of_Loans
FROM Members m;

-- 9. Subquery in FROM
SELECT publication_year, Average_Quantity
FROM (
    SELECT publication_year, AVG(quantity) AS Average_Quantity
    FROM Books
    GROUP BY publication_year
) AS Book_Summary;

-- 10. Derived table with filtering
SELECT publication_year, Total_Quantity
FROM (
    SELECT publication_year, SUM(quantity) AS Total_Quantity
    FROM Books
    GROUP BY publication_year
) AS Book_Summary
WHERE Total_Quantity > 3;

-- 11. Nested subquery
SELECT title, publication_year
FROM Books
WHERE publication_year > (
    SELECT AVG(publication_year)
    FROM Books
);

-- 12. Subquery using ALL
SELECT title, quantity
FROM Books
WHERE quantity >= ALL (
    SELECT quantity
    FROM Books
);

-- 13. Subquery using ANY
SELECT title, quantity
FROM Books
WHERE quantity > ANY (
    SELECT quantity
    FROM Books
    WHERE publication_year < 2000
);

-- 14. Members with more than one loan
SELECT name
FROM Members
WHERE member_id IN (
    SELECT member_id
    FROM Loans
    GROUP BY member_id
    HAVING COUNT(*) > 1
);

-- 15. Books that have never been loaned
SELECT title
FROM Books b
WHERE NOT EXISTS (
    SELECT 1
    FROM Loans l
    WHERE l.book_id = b.book_id
);