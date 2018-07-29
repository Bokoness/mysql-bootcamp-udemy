CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES (
    'padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35'
);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

-- date methods
--  CURDATE() - gives current date
--  CURTIME() - gives current time
--  NOW() gives current datetime

INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES 
('Jumbo', CURDATE(), CURTIME(), NOW());

-- date formatters
-- DAY() - extract only the day from the date
-- DAYNAME() - extract the day and convert it to a string

SELECT name, DAYNAME(birthdate) FROM people; 

-- DATE_FORMAT()
SELECT DATE_FORMAT("2017-06-15", "%M %d %Y"); 

-- DATEDIFF() - shows the difference between dates
SELECT DATEDIFF(NOW(), birthdate) AS 'Days passed since birth' FROM people;

-- DATEADD() -- adds days/ mounths/ years to date
SELECT birthdt AS 'original date', DATE_ADD(birthdt, INTERVAL 1 MONTH) AS 'adds 1 mounth' FROM people;
    -- another way doing it - with +- signs
SELECT birthdt AS 'original date', birthdt - INTERVAL 5 MONTH AS '5 months less' FROM people;
