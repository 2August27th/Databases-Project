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
sex VARCHAR(2) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE Registered_members (
member_id INT NOT NULL,
member_name VARCHAR(60) NOT NULL,
age INT NOT NULL,
sex VARCHAR(2) NOT NULL,
PRIMARY KEY (member_id)
);

CREATE TABLE Department (
department_type VARCHAR(50) NOT NULL,
staff_id INT NOT NULL, 
staff_member VARCHAR(60) NOT NULL,
PRIMARY KEY (staff_id)
);

CREATE TABLE Facilites (
department VARCHAR(60) NOT NULL,
floor_number VARCHAR(20),
computers INT NOT NULL,
quiet_rooms INT NOT NULL,
private_rooms INT NOT NULL,
male_toilets INT NOT NULL,
female_toilets INT NOT NULL,
disabled_toilets INT NOT NULL,
unisex_toilets INT NOT NULL,
PRIMARY KEY (floor_number)
);


#Books section

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

#Sales section
#SELECT * FROM SALES;
#selecting from sales where people ddin't rent a book.
#SELECT * FROM SALES WHERE rent_date = 'N/A';

#establishing relationship between books and sales.
#SELECT * FROM Books
#JOIN sales ON book_id = books.id;


#Staff section
SELECT * FROM STAFF;

INSERT INTO staff (id, name, salary, department, age, sex)
VALUES (1, 'D. Osama', 35000, 'IT', 46, 'M'),
	   (2, 'J. Babatunde', 26000, 'Librarian' , 27, 'M'),
       (3, 'H. Malik', 45000, 'Management', 53, 'M'),
       (4, 'A. Andre', 23000, 'Librarian', 25, 'F'),
       (5, 'K. Keely', 25000, 'Librarian', 34, 'F'),
	   (6, 'M. O Keefe', 30000, 'Libarian', 51, 'F'),
       (7, 'S. Melaria', 30000, 'IT', 26, 'M'),
       (8, 'L. Caleb', 45000, 'Management', 47, 'M'),
       (9, 'S. Alamni', 34000, 'Management', 30, 'F'),
       (10, 'V. Lena', 29000, 'IT', 29, 'M');
       
       
       
#Department section
SELECT * FROM department;

INSERT INTO department (department_type, staff_id, staff_member)
VALUES ('IT', 1, 'D. Osama'),
	   ('Librarian', 2, 'J. Babatunde'),
       ('Management' , 3, 'H. Malik'),
       ('Librarian', 4, 'A. Andre'),
       ('Librarian', 5, 'K. Keely'),
       ('Librarian', 6, 'M. O Keefe'),
       ('IT', 7, 'S. Melaria'),
       ('Management', 8, 'L. Caleb'),
       ('Management', 9, 'S. Alamni'),
       ('IT', 10, 'V.Lena');



#regeistered memebers section
SELECT * FROM registered_members;

INSERT INTO registered_members (member_id, member_name, age, sex) 
VALUES (2572, 'J.J Jamesson', 20,'M'),
	   (3621, 'A. Wilson', 17, 'F'),
       (3512, 'K. Felve', 30, 'M'),
       (9931, 'M. Fellps', 16, 'M'),
       (4621, 'G. Harbo', 19, 'M'),
       (7080, 'S. Cloud', 24, 'F');
       


#facilites section

SELECT * FROM facilites;

INSERT INTO facilites (department, floor_number, computers, quiet_rooms, private_rooms, male_toilets, female_toilets, disabled_toilets, unisex_toilets)
VALUES ('IT', 'Floor 2', 5, 2, 4, 2, 2, 1, 1),
	   ('Librarian', 'Floor 1', 3, 2, 6, 2, 2, 1, 1),
       ('Management', 'Floor 3', 4, 4, 4, 2, 2, 1, 1); 
       
