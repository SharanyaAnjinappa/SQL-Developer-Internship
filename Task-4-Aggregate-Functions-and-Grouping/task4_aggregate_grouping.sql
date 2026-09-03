USE library_db;

-- 1. COUNT()
-- Count the total number of members
SELECT COUNT(*) AS Total_Members
FROM Members;

-- Count the total number of books
SELECT COUNT(*) AS Total_Books
FROM Books;

-- Count the total number of loans
SELECT COUNT(*) AS Total_Loans
FROM Loans;

-- 2. SUM()
-- Calculate the total quantity of books available
SELECT SUM(quantity) AS Total_Book_Quantity
FROM Books;

-- 3. AVG()
-- Calculate the average number of copies available per book
SELECT ROUND(AVG(quantity), 2) AS Average_Book_Quantity
FROM Books;

-- 4. MIN() AND MAX()
-- Find the minimum and maximum book quantity
SELECT
    MIN(quantity) AS Minimum_Quantity,
    MAX(quantity) AS Maximum_Quantity
FROM Books;

-- Find the earliest and latest publication year
SELECT
    MIN(publication_year) AS Earliest_Publication_Year,
    MAX(publication_year) AS Latest_Publication_Year
FROM Books;

-- 5. GROUP BY
-- Count books by publication year
SELECT
    publication_year,
    COUNT(*) AS Number_Of_Books
FROM Books
GROUP BY publication_year
ORDER BY publication_year;

-- Group books by quantity
SELECT
    quantity,
    COUNT(*) AS Number_Of_Books
FROM Books
GROUP BY quantity
ORDER BY quantity;

-- 6. GROUP BY WITH SUM()
-- Calculate total book quantity for each publication year
SELECT
    publication_year,
    SUM(quantity) AS Total_Quantity
FROM Books
GROUP BY publication_year
ORDER BY publication_year;


-- ============================================================
-- 7. GROUP BY WITH AVG()
-- ============================================================

-- Calculate average book quantity for each publication year
SELECT
    publication_year,
    ROUND(AVG(quantity), 2) AS Average_Quantity
FROM Books
GROUP BY publication_year
ORDER BY publication_year;

-- 8. COUNT LOANS BY MEMBER
-- Count how many loans each member has made
SELECT
    member_id,
    COUNT(*) AS Number_Of_Loans
FROM Loans
GROUP BY member_id
ORDER BY Number_Of_Loans DESC;

-- 9. GROUP BY WITH JOIN
-- Display member names and the number of books they borrowed
SELECT
    m.member_id,
    m.name AS Member_Name,
    COUNT(l.loan_id) AS Number_Of_Loans
FROM Members m
LEFT JOIN Loans l
    ON m.member_id = l.member_id
GROUP BY m.member_id, m.name
ORDER BY Number_Of_Loans DESC;

-- 10. HAVING
-- Find members who have borrowed more than one book
SELECT
    member_id,
    COUNT(*) AS Number_Of_Loans
FROM Loans
GROUP BY member_id
HAVING COUNT(*) > 1;

-- Find publication years having more than one book
SELECT
    publication_year,
    COUNT(*) AS Number_Of_Books
FROM Books
GROUP BY publication_year
HAVING COUNT(*) > 1;

-- 11. WHERE WITH GROUP BY
-- Count books published after 1950, grouped by publication year
SELECT
    publication_year,
    COUNT(*) AS Number_Of_Books
FROM Books
WHERE publication_year > 1950
GROUP BY publication_year
ORDER BY publication_year;

-- 12. HAVING WITH SUM()
-- Find publication years where total book quantity is greater than 3
SELECT
    publication_year,
    SUM(quantity) AS Total_Quantity
FROM Books
GROUP BY publication_year
HAVING SUM(quantity) > 3;

-- 13. COUNT(DISTINCT)
-- Count the number of unique publication years
SELECT COUNT(DISTINCT publication_year) AS Unique_Publication_Years
FROM Books;

-- Count the number of members who have borrowed at least one book
SELECT COUNT(DISTINCT member_id) AS Members_With_Loans
FROM Loans;

-- 14. GROUP BY MULTIPLE COLUMNS
-- Group books by publication year and quantity
SELECT
    publication_year,
    quantity,
    COUNT(*) AS Number_Of_Books
FROM Books
GROUP BY publication_year, quantity
ORDER BY publication_year, quantity;

-- 15. COMBINING AGGREGATE FUNCTIONS
-- Display overall book statistics
SELECT
    COUNT(*) AS Total_Book_Types,
    SUM(quantity) AS Total_Copies,
    ROUND(AVG(quantity), 2) AS Average_Copies,
    MIN(quantity) AS Minimum_Copies,
    MAX(quantity) AS Maximum_Copies
FROM Books;