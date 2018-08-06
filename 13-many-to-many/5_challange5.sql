-- show the average rating per genre

SELECT 
    genre,
    Round(AVG(rating), 2) AS avg_rating
FROM series
INNER JOIN reviews
    ON series.id = reviews.series_id
GROUP BY genre;


