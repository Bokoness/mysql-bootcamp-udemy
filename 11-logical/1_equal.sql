/************
| NOT EQUAL |
************/

-- select all the books that wrote in 2017
SELECT title, released_year AS '2017 books' FROM books WHERE released_year=2003;
-- select all the books exept the ones that wrote in 2017
SELECT title, released_year AS 'All books exept 2017' FROM books WHERE released_year!=2017;