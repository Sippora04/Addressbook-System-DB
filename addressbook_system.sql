#UC1
#create database Addressbook_System;
#USE Addressbook_System;
#SELECT DATABASE();

#UC2
#CREATE TABLE address_book (
# first_name VARCHAR(150) NOT NULL,
# last_name 	VARCHAR(150) NOT NULL,
# address 	VARCHAR(250) NOT NULL,
# city 		VARCHAR(150) NOT NULL,
# state 		VARCHAR(150) NOT NULL,
# zip 		INT unsigned NOT NULL,
# phone 		BIGINT  NOT NULL,
# email 		VARCHAR(250) NOT NULL,
# PRIMARY KEY (first_name)
#);

#DESCRIBE address_book;

#UC3
#INSERT INTO address_book VALUES  		
#( 'Sippora', 'Toppo', '101 Abc', 'Ranchi', 'Jharkhand', 834004, 9876543219, 'abc.xyz@gmail.com' ),
#( 'Ritu', 'Minz', '102 Abc', 'Ahemdabad','Gujarat', 110022, 9988776655, 'ritu123@gmail.com'),
#( 'Ativ', 'David', '103 Pqr', 'Mumbai', 'Maharashtra', 400706, 7143298723, 'ativDavid@gmail.com');
 
 #select * from address_book;
 
 #UC4
#UPDATE address_book SET zip = 834008 WHERE first_name = 'Sippora';
#select * from address_book;

#UC5
#DELETE FROM address_book WHERE first_name = 'Ritu';
#select * from address_book;

#UC6
#SELECT * FROM address_book WHERE city = 'Mumbai';
#SELECT * FROM address_book WHERE state = 'Jharkhand';

#UC7
#SELECT city, COUNT(city) FROM address_book GROUP BY city;
#SELECT state, COUNT(state) FROM address_book GROUP BY state; 

#UC8
#SELECT * FROM address_book WHERE city = 'Ranchi' ORDER BY first_name; 

#UC9
#ALTER TABLE address_book ADD address_book_name VARCHAR(50) AFTER email;
#ALTER TABLE address_book ADD address_book_type VARCHAR(50) AFTER address_book_name;
#UPDATE address_book SET address_book_name='Anne Frank' WHERE first_name = 'Sippora';
#UPDATE address_book SET address_book_type='Family' WHERE first_name = 'Sippora';
#UPDATE address_book SET address_book_name='AddressBook 2020' WHERE first_name = 'Ativ';
#UPDATE address_book SET address_book_type='Teacher' WHERE first_name = 'Darshana';

#UC10
SELECT address_book_type, count(*) FROM address_book GROUP BY address_book_type;


