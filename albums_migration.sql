
CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;
CREATE TABLE IF NOT EXISTS albums (
column1_id int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
column2_artist char(50) NOT NULL,
column3_name varchar(100) NOT NULL,
column4_release_date int(4) NOT NULL,
column5_sales FLOAT(10,2) NOT NULL,
column6_genre CHAR (100) NOT NULL
);