-- the differences between time and time stamp is that timestamp takes less space
-- so we always preffer timestamps among time

CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

-- ON UPDATE - updates the timestamp whenever the data changes
CREATE TABLE comments2 (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW();
);

