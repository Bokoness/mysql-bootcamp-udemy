-- select all the books exept the ones that wrote in 2017
SELECT title FROM books WHERE year != 2017;

-- select all books that start with W
SELECT title FROM books WHERE title LIKE 'W%';
-- select all books that dont start with W
SELECT title FROM books WHERE title NOT LIKE 'W%';

-- Select all books that their released year is greater then 2000
SELECT title AS 'Greater then 2000', released_year FROm books WHERE released_year > 2000 ORDER BY released_year;
-- greater or equal to the year 2000
SELECT title AS 'Greater then 2000', released_year FROm books WHERE released_year >= 2000 ORDER BY released_year;
