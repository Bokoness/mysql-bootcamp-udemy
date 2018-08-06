-- Joinning all 3 tables
-- (!) reviews table is the linking table
SELECT 
   title,
   rating,
   CONCAT(first_name,' ',last_name) as reviewer
FROM reviewers
-- joinning reviewers with reviews
INNER JOIN reviews 
    ON reviewers.id = reviews.reviewer_id
-- joinning reviews with series
INNER JOIN series
    ON reviews.series_id = series.id
ORDER BY title;