-- will distinct author name from author name, and if there are 2 similar names - will select only on of them
SELECT DISTINCT author_fname FROM books;

-- will combine first name and last name together and will distinct the whole sentence - will distinct only similar Full names
SELECT DISTINCT author_fname, author_lname FROM books;
