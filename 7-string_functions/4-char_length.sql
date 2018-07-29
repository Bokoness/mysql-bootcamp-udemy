/*  *********  lengh **********
    - count the length of the character of a string
*/
SELECT
    CONCAT(author_fname, '-', author_lname) AS 'full name',
    CHAR_LENGTH(author_lname) AS "first name's length"
 FROM books;
