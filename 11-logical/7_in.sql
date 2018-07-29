/*************
| IN / NOT IN|
*************/
-- select all books where the author last name is Carver or lahiri or smith
    -- the classic way
SELECT 
    title, 
    author_lname 
FROM books
WHERE author_lname='Carver' OR
      author_lname='Lahiri' OR
      author_lname='Smith';
    
    -- using IN
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
    -- select all books in released year of 2017 and 1985 
SELECT title, released_year FROM books
WHERE released_year IN (2017, 1985);

-- select all books where released year is an odd number
    -- classic way
SELECT title, released_year FROM books
WHERE released_year != 2000 AND
      released_year != 2002 AND
      released_year != 2004 AND
      released_year != 2006 AND
      released_year != 2008 AND
      released_year != 2010 AND
      released_year != 2012 AND
      released_year != 2014 AND
      released_year != 2016;
      
     -- using NOT IN
SELECT title, released_year FROM books
WHERE released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);