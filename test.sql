show tables;

DROP TABLE IF EXISTS students;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    age INT check (age >= 18),
    grade INT NOT NULL,
    exam_date DATE DEFAULT (current_date)
);

INSERT INTO students (name, age, grade) VALUES ('Alice', 20, 90);

SELECT * FROM students;