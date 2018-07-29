/*will order your selection in a single order
for example*/
SELECT author_lname FROM books; /*will represent the selection in the order they inserted*/
SELECT author_lname FROM books ORDER BY author_lname; /*will order by lastname letters value in ascending order*/
SELECT author_lname FROM books ORDER BY author_lname DESC; /*will order by name in descening*/ 

-- oder in integers: 
SELECT released_year FROM books ORDER BY released_year;
SELECT released_year FROM books ORDER BY released_year DESC; 

-- will represent title, pages, released year in one row - ordered only by released year
SELECT title, pages, released_year FROM books ORDER BY released_year;
SELECT title, pages, released_year FROM books ORDER BY released_year;

--will order by last name, but if there are two similar last names - will order by first name 
SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;

