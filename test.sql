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

select version();

INSERT INTO students (name, age, grade) 
VALUES 
  ('Alice', 20, 90),
  ('Alice', 20, 90),
  ('Bob', 22, 85),
  ('Charlie', 19, 88),
  ('Diana', 21, 92),
  ('Ethan', 23, 80);


SELECT * FROM students;

SELECT avg(grade) FROM students;

delete from students where id=3;

update students set grade=95 where id=2;

SELECT * FROM students;

select * from students
where name like '%a%';

select name,count(*) from students
group by name
having count(*)>1;

-- Drop tables if already exist
DROP TABLE IF EXISTS books;


DROP TABLE IF EXISTS authors;


DROP TABLE IF EXISTS book_inserts_log;


-- 1. Creating sample tables
CREATE TABLE authors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);


CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    author_id INT,
    price DECIMAL(10,2),
    published_year INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);

-- Inserting sample data
INSERT INTO authors (name) VALUES 
('George Orwell'),
('J.K. Rowling'),
('J.R.R. Tolkien');


INSERT INTO books (title, author_id, price, published_year) VALUES
('1984', 1, 15.99, 1949),
('Animal Farm', 1, 9.99, 1945),
("Harry Potter and the Sorcerer\'s Stone", 2, 19.99, 1997),
('The Hobbit', 3,14.99,1937);