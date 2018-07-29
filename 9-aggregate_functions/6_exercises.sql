-- print the number of books in the database
SELECT COUNT(*) as 'number of books' FROM books;

-- print out how many books where released in each year
SELECT released_year, COUNT(released_year) FROM books 
    GROUP BY released_year;

-- print out the total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- find the average released year for each author
SELECT author_fname, author_lname, AVG(released_year) FROM books
    GROUP BY author_fname, author_lname;

-- find the full name of the author who wrote the longest book
SELECT CONCAT(author_fname, ' ', author_lname) FROM books WHERE pages=(SELECT MAX(pages) FROM books);

-- 
SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages' 
FROM books
    GROUP BY released_year;