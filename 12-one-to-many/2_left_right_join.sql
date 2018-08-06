-- left join: choosing all data from one table combined with specific data from another table

    -- will select all dataq from customers, combined with some of the data from customers
        -- only where customers.id equals to orders.customer_id
    SELECT * FROM customers
    LEFT JOIN orders
        ON customers.id = orders.customer_id;

    SELECT first_name, last_name, order_date, amount
    FROM customers
    LEFT JOIN orders
        ON customers.id = orders.customer_id; 

    -- same as the joints at the top exepct the sum columns that wont show NULL data, only 0 if customer didnt order anything
    SELECT 
        first_name, 
        last_name,
        IFNULL(SUM(amount), 0) AS total_spent
    FROM customers
    LEFT JOIN orders
        ON customers.id = orders.customer_id
    GROUP BY customers.id
    ORDER BY total_spent;