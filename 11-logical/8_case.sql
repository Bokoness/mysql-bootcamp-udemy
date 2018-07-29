/*******
| CASE |
********/

-- just like switch in JS
-- if quantity is between 0-50 print one *
    -- if between 51 - 100 print two **
    -- if higher then 100 print 3 ***
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;