/***********************
| BETWEEN / NOT BETWEEN|
***********************/
-- select all books between 2004 to 2015
-- the clasic way:
SELECT title, released_year FROM books
WHERE released_year >= 2004 && released_year <= 2015;

-- using BETWEEN.. AND 
SELECT title, released_year FROM books 
WHERE released_year BETWEEN 2004 AND 2015;

-- NOT BETWEEN
-- select all books not between the years 2004 - 2015
SELECT title, released_year FROM books 
WHERE released_year NOT BETWEEN 2004 AND 2015;

-- Comparing dates
    -- can work
SELECT name, birthdt FROM people
WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';
    -- best practice - cast the string to datetime
SELECT name, birthdt FROM people
WHERE birthdt BETWEEN CAST('1980-01-01' AS DATETIME) AND CAST('2000-01-01' AS DATETIME);