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


select * from authors;


select * from books;

select * from authors
join books on authors.id = books.author_id
where price > 10 

