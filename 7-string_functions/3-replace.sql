/*  *********  REPLACE**********
    - replace a character with another character
    - for example SELECT REPLACE('hello world', 'l', '*');
        - will replace all 'l' with astriks
*/
SELECT
    REPLACE(title, 'e', '###') AS 'weird string'
FROM books;

