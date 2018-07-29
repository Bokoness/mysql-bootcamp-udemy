/*  *********  CONCAT **********
concat - concats two columns together
    - concat is a function that binds with another function, it doesn't stads for its own,
        - for example thats an invalid syntax CONCAT('ness', 'bokobza');
        - a valid syntax SELECT CONCAT ('ness', 'bokobza') FROM books;
*/

SELECT author_fname as first_name,
    author_lname as last_name,
    CONCAT (author_fname, '-', author_lname) as full_name /*will concat first name and last name and will select it as column */
FROM books;

/* *********  CONCAT_WS  **********
    concat wi separator
*/

SELECT
    CONCAT_WS(' - ', title, author_fname, author_lname)
FROM BOOKS;