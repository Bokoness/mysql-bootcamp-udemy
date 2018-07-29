/* GROUP BY summarzies or aggregates indentical data into single rows */

-- will group all rows into similar last name groups, and will count how many records each group has
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname; 

-- will group only when both - first name and last name are uniqs
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname; 

-- will group all books that have same released year and will count how many in each group
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;