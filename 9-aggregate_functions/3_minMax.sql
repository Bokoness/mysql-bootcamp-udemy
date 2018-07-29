-- select the earliest year of our books
SELECT MIN(released_year) FROM books;

-- select the latest year of our books
SELECT  MAX(released_year) FROM books;

-- select the book that have the most pages
SELECT title FROM books WHERE pages=634;
-- or
SELECT title AS 'the longest book' , pages FROM books WHERE pages=(SELECT MAX(pages) FROM books);

-- select the shortest book 
SELECT title as 'the shortest book', pages FROM books WHERE pages=(SELECT MIN(pages) FROM books);

-- group all author's books then find the earliest realeased book of each author
SELECT author_fname, author_lname, MIN(released_year) FROM books
GROUP BY author_lname, author_fname; 