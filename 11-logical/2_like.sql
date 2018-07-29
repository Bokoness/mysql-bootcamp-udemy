/******************
| LIKE / NOT LIKE |
******************/
-- select all books that start with W
SELECT title FROM books WHERE title LIKE 'W%';
-- select all books that dont start with W
SELECT title FROM books WHERE title NOT LIKE 'W%';