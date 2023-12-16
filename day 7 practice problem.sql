create database onlineBookstore;
use onlineBookstore;


CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(50),
    author_id INT,
    price DECIMAL(10, 2),
    publication_year INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(50),
    country VARCHAR(100)
    );
    
 CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    book_id INT,
    customer_name VARCHAR(255),
    order_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


INSERT INTO books (book_id, title, author_id, price, publication_year)
 VALUES (1, 'big boy', 1, 25.99, 2010),
(2, 'two wings', 1, 19.99, 2017),
(3, 'crimes', 2, 29.99, 2022);


INSERT INTO authors (author_id, author_name, country)
VALUES (1, 'michile', 'USA'), (2, 'trevor philips', 'germany');


INSERT INTO orders (order_id, book_id, customer_name, order_date) 
VALUES (1, 1, 'jamy', '2023-01-10'), (2, 3, 'cristopher', '2023-02-15');


select * from books;

select * from authors;

select * from orders;

alter table books add column genre varchar(100);
select * from books;

alter table orders add column quantity INT;
select * from orders;

select * from books inner join authors where books.author_id = authors.author_id;

select * from orders inner join books where books.book_id = orders.book_id;