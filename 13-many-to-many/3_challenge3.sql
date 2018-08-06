-- select the name, lastname from reviewers and match he's ratings from the reviews table

SELECT 
    first_name,
    last_name,
    rating
FROM reviewers
INNER JOIN reviews
    ON reviewers.id = reviews.reviewer_id
ORDER BY reviewers.id;
