-- EX. 1 Find Earliest Date A User Joined
SELECT * FROM users
ORDER BY created_at
LIMIT 1;

-- EX. 2 Users According To The Month They Joined
SELECT MONTHNAME(created_at) AS month, count(*) AS 'count'
FROM users
GROUP BY month
ORDER BY month;

-- EX. 3 Count Number of Users With Yahoo Emails
SELECT count(*) AS yahoo_users 
FROM users
WHERE email like '%@yahoo.com';

--EX. 4 Calculate Total Number of Users for Each Email Host

    SELECT CASE 
             WHEN email LIKE '%@gmail.com' THEN 'gmail' 
             WHEN email LIKE '%@yahoo.com' THEN 'yahoo' 
             WHEN email LIKE '%@hotmail.com' THEN 'hotmail' 
             ELSE 'other' 
           end      AS provider, 
           Count(*) AS total_users 
    FROM   users 
    GROUP  BY provider 
    ORDER  BY total_users DESC; 
