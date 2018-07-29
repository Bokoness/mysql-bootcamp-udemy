/*limit allowed us to specify a number, how many result we want, for example: top 10 books etc*/
-- select 5 lastest released books
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

-- select 3 latest realeasd year STARTING FROM THE SECOND ONE
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1, 3;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;

