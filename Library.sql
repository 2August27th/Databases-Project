CREATE DATABASE Library;
USE Library;

CREATE TABLE Books (
	id INT NOT NULL auto_increment,
	name VARCHAR(80) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Sales (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(80) NOT NULL,
checkout_date VARCHAR(30) NOT NULL,
rent_date VARCHAR(30) NOT NULL,
return_date VARCHAR(30) NOT NULL,
book_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (book_id) REFERENCES Books(id)
);

CREATE TABLE Staff (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(60) NOT NULL,
salary INT NOT NULL,
department VARCHAR(60) NOT NULL,
age INT NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE Registered_members (
);

CREATE TABLE Facilites (
deparment VARCHAR(60) NOT NULL,
floor_number VARCHAR(20),
computers INT NOT NULL,
quiet_rooms INT NOT NULL,
private_rooms INT NOT NULL,
male_toilets INT NOT NULL,
female_toilets INT NOT NULL,
disabled_toilets INT NOT NULL,
unisex_toilets INT NOT NULL
);



INSERT INTO Books (name)
VALUES ('Lord Of The Rings'), ('Catcher in the Rye'), ('Don Quixote'), ('Harry Potter and the Sorcerers Stone'), ('
And Then There Were None'), ('Alices Adventures in Wonderland');


SELECT * FROM Books;

INSERT INTO sales (checkout_date, rent_date, return_date, name, book_id)
VALUES ('December 3rd. 2023.', 'N/A', 'December 12th. 2023.', 'Lord Of The Rings', 1),
	   ('N/A', 'October 1st. 2023.', 'October 6th. 2023.', 'Catcher in the Rye', 2),
       ('January 10th. 2024.', 'N/A', 'January 16th. 2024.', 'Don Quixote', 3),
       ('January 2nd. 2024.', 'N/A', 'January 20th. 2024.', 'Harry Potter and the Sorcerers Stone', 4),
       ('Semptember 25th. 2023.', 'N/A', 'October 9th. 2023.', 'And Then There Were None', 5),
       ('N/A', 'Febuary 24th. 2024.', 'March 9th. 2024.', 'Alices Adventures in Wonderland', 6);

SELECT * FROM SALES;

SELECT * FROM SALES WHERE rent_date = 'N/A';

SELECT * FROM Books
JOIN sales ON book_id = books.id;

SELECT AVG(salary) from employees;
