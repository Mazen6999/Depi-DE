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