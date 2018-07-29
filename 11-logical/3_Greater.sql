/*****************************
| GREATER / GREATER OR EQUAL |
******************************/
-- Select all books that their released year is greater then 2000
SELECT title AS 'Greater then 2000', released_year FROm books WHERE released_year > 2000 ORDER BY released_year;
-- greater or equal to the year 2000
SELECT title AS 'Greater then 2000', released_year FROm books WHERE released_year >= 2000 ORDER BY released_year;
