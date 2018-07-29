/******
| AND |
******/
-- select all books of Eggers in releaded year of 2010
SELECT title, author_lname, released_year FROM books 
WHERE author_lname = 'Eggers' && released_year > 2010;