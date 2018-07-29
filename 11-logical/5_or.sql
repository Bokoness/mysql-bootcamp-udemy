/******
| OR |
******/
-- select all books of eggers (even benith 2010) or the books that released in 2010 and above
SELECT 
    title, 
    author_lname, 
    released_year 
FROM books
WHERE author_lname='Eggers' || released_year > 2010;