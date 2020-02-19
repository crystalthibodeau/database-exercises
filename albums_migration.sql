
CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;
CREATE TABLE IF NOT EXISTS albums (
id int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
artist char(50) NOT NULL,
name varchar(100) NOT NULL,
release_date int(4) NOT NULL,
sales FLOAT(10,2) NOT NULL,
genre CHAR (100) NOT NULL
);


INSERT INTO albums(artist, name, release_date, sales,genre) values('Eagles', 'The Eagles', 2000 ,300000, 'Classic Rock','BR%$(');