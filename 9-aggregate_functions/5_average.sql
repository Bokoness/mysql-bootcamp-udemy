-- AVG averages our data

-- calculates the avrage released year in our book store
SELECT AVG(released_year) FROM books;

-- calculates the average stock quantity for books released in the same year

SELECT released_year, AVG(stock_quantity) FROM books
GROUP BY released_year;

-- calculate the average pages of each author
SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_fname, author_lname;