DROP DATABASE IF EXISTS trigger_demo; 
CREATE DATABASE trigger_demo;
USE trigger_demo;

CREATE TABLE users (
    username VARCHAR(100),
    age INT
);

INSERT INTO users (username, age) VALUES ("Bobby", 22);


