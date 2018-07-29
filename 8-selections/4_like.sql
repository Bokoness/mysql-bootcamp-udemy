-- select title and author last name where author lastname HAS the letters 'da' in it
SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';

-- select title and author last name where author lastname STARTS WITH the letters 'da' in it
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

-- select title and author last name where author lastname ENDS WITH the letters 'da' in it
SELECT title, author_fname FROM books WHERE author_fname LIKE 've%';

-- select title and author last name where author lastname has exactly 4 letters in it
-- the number of underscores = the number of letters
SELECT title, author_fname FROM books WHERE author_fname LIKE '____';

/*
    - % = everything
    - _ = exac
    escape characters - if we want to find a string with % or _ in it: 
    - '/%'
    - '/_'
*/


