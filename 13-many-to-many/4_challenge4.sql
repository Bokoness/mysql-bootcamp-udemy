-- select all the movies that dont have any reviews
SELECT 
    title AS unreviewed_series
FROM series
LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL;


