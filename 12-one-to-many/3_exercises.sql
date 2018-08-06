CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    first_name  VARCHAR(100)
);

CREATE TABLE papers (
    title VARCHAR(100),
    grade VARCHAR(100),
    student_id INT
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


-- exercise 1
SELECT first_name, title, grade FROM students
JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;

-- exercise 2
SELECT first_name, title, grade FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;

-- exercise 3
SELECT first_name,IFNULL(title, 'Missing'), IFNULL(grade, 0) FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;

-- exercise 3
SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;

-- exercise 4
SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average,
    IF(AVG(grade) >= 75, "PASSING", "FAILING") AS passing_status
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;

--