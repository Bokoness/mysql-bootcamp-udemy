-- challenge 1
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred')) AS 'challenge 1';

-- challenge 2
SELECT
    REPLACE(title, ' ', '->') AS 'challenge 2'
FROM books;

-- challenge 3
SELECT
    author_fname AS 'fowards',
    REVERSE(author_fname) AS 'backwareds'
FROM books;

-- chellenge 4
SELECT
    CONCAT(UPPER(author_fname), ' ',UPPER(author_lname)) AS 'full name is caps'
FROM books;

-- chellenge 5
SELECT
    CONCAT
    (
        title, ' was released in ', released_year
    )
    AS 'challenge 5'
FROM books;

-- chellenge 6
SELECT
    title as 'title',
    LENGTH(title) as 'character count'
FROM books;

-- chellenge 7
SELECT
    CONCAT (SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT (author_lname, ',', author_fname) AS 'author',
    CONCAT (stock_quantity, ' in stock') AS 'quantity'
FROM books;