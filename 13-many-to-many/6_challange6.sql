
SELECT 
    first_name,
    last_name,
    IF(rating IS NULL, 0, COUNT(*)) AS COUNT,
    IF(rating IS NULL, 0, MIN(rating)) AS MIN,
    IF(rating IS NULL, 0, MAX(rating)) AS MAX, 
    IF(rating IS NULL, 0, AVG(rating)) AS AVG,
    CASE
        WHEN COUNT(rating) >= 10 THEN 'POWER USER'
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    end AS STATUS
FROM reviewers
LEFT JOIN reviews  
    ON reviewers.id = reviews.reviewer_id
GROUP BY reviewer_id
ORDER BY first_name;