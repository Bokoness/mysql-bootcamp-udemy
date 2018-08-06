-- Finding Orders Placed By George: 2 Step Process
    SELECT id FROM customers WHERE last_name='George'; -- the id of geroge
    SELECT * FROM orders WHERE customer_id = 1; -- the orders of george

-- Finding Orders Placed By George: Using a subquery

    SELECT * FROM orders WHERE customer_id =
        (
            SELECT id FROM customers
            WHERE last_name='George'
        );

-- Cross Join Craziness - the common way to do that, but with a problem

SELECT * FROM customers, orders; -- that cross joint will select every possible combination between customers to oders

-- IMPLICIT INNTER JOIN
    -- will join the two tables only where the id in customers eqaul to the customer id in orders
        -- in other words, will show all the orders of user
SELECT first_name, last_name, order_date, amount FROM customers, orders 
WHERE customers.id = orders.customer_id;

-- EXPLICIT INNTER JOIN - best practice
    -- using the key word JOIN
    -- SELECT <table> JOIN <another table> ON <condition>

    SELECT * FROM customers
    JOIN orders
        ON customers.id = orders.customer_id;
        
    SELECT first_name, last_name, order_date, amount 
    FROM customers
    JOIN orders
        ON customers.id = orders.customer_id;