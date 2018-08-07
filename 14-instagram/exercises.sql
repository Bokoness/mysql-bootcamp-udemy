-- 1. Finding 5 oldest users
SELECT 
    username AS 5_oldest_users,
    created_at
FROM users
ORDER BY created_at
LIMIT 5;

-- 2. Most Popular Registration Date
SELECT 
    username,
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

-- 3. Find the users who never post a photo
SELECT
    username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- 4. Finding the photo with most likes
SELECT 
    image_url,
    photos.id,
    username,
    COUNT(*) AS total_likes
FROM photos
INNER JOIN likes
    ON photos.id = likes.photo_id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total_likes DESC
LIMIT 1;

-- 5. the Average posts of users
SELECT (SELECT Count(*) FROM photos) / (SELECT Count(*) FROM   users) AS avg; 

-- 6. find the 5 most popular tags
SELECT
    tags.tag_name,
    COUNT(*) AS total
    FROM tags
INNER JOIN photo_tags
    ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

-- 7. find users who likes every single photo on the site
SELECT 
    username,
    COUNT(*) AS num_likes
FROM users
JOIN likes
    ON users.id = likes.user_id
GROUP BY users.id
HAVING num_likes = (SELECT COUNT(*) FROM photos);


    



