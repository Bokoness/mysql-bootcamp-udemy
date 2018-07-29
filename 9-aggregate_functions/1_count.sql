-- will count every row in books, the eventualy will count how many books we have
SELECT COUNT(*) FROM books;

-- will count the distinct fname in books
SELECT COUNT(DISTINCT author_fname) FROM books;

-- how many titles has the string 'the' in it?
SELECT COUNT(title) FROM books WHERE title LIKE '%the%';
