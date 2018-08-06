-- will select all stock quantity, if there is no data - will replace the NULL with 0
SELECT IFNULL(stock_quantity, 0) FROM books;