USE library_db;
-- 1. SELECT ALL COLUMNS
SELECT * FROM Members;
SELECT * FROM Books;
SELECT * FROM Authors;
SELECT * FROM Loans;

-- 2. SELECT SPECIFIC COLUMNS
SELECT name, email
FROM Members;

SELECT title, publication_year
FROM Books;
 
-- 3. USING WHERE
-- Find books published after the year 2000
SELECT *
FROM Books
WHERE publication_year > 2000;

-- 4. USING AND
-- Find books published after 1950 with quantity greater than 2
SELECT *
FROM Books
WHERE publication_year > 1950
AND quantity > 2;

-- 5. USING OR
-- Find books published in either 1949 or 1997
SELECT *
FROM Books
WHERE publication_year = 1949
OR publication_year = 1997;

-- 6. USING LIKE
-- Find books with "Harry" in the title
SELECT *
FROM Books
WHERE title LIKE '%Harry%';

-- Find members whose names start with 'A'
SELECT *
FROM Members
WHERE name LIKE 'A%';

-- 7. USING BETWEEN
-- Find books published between 1950 and 2000
SELECT *
FROM Books
WHERE publication_year BETWEEN 1950 AND 2000;

-- 8. USING IN
-- Find books published in specific years
SELECT *
FROM Books
WHERE publication_year IN (1949, 1997, 2004);

-- 9. USING DISTINCT
-- Display unique publication years
SELECT DISTINCT publication_year
FROM Books;

-- 10. ORDER BY ASCENDING
-- Sort books by publication year in ascending order
SELECT *
FROM Books
ORDER BY publication_year ASC;

-- 11. ORDER BY DESCENDING
-- Sort books by publication year in descending order
SELECT *
FROM Books
ORDER BY publication_year DESC;

-- 12. USING LIMIT
-- Display only the first 3 books
SELECT *
FROM Books
LIMIT 3;

-- 13. USING ALIAS
-- Display columns with aliases
SELECT
    title AS Book_Title,
    publication_year AS Published_Year
FROM Books;

-- 14. COMBINING WHERE, ORDER BY AND LIMIT
-- Display books published after 1950,
-- sorted by newest first, showing only 3 results
SELECT *
FROM Books
WHERE publication_year > 1950
ORDER BY publication_year DESC
LIMIT 3;

-- 15. SELECT USING NULL
-- Find loans where the book has not been returned
SELECT *
FROM Loans
WHERE return_date IS NULL;
