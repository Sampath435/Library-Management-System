CREATE DATABASE Library;
USE Library;

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255)
);

CREATE TABLE issued_books (
    book_id INT PRIMARY KEY,
    issued_to VARCHAR(255),
    FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE
);
