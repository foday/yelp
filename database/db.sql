CREATE TABLE products (
id INT, 
name VARCHAR(50),
price INT,
on_sale boolean

);
-- ******************************* MODIFYING THE TABLE *******************************************
-- ALTER TABLE products ADD COLUMN featured boolean; used to add a 'featured' column to products table 
-- ALTER TABLE products DROP COLUMN featured; used to erase 'featured' column
-- DROP TABLE products;
-- DROP DATABASE yelp_practice; U must get out of the database and get into another one in order to drop it

-- CREATE DATABASE yelp;
-- \c yelp ** to connect to database **

CREATE TABLE restaurants (
    id INT, 
    name VARCHAR(50),
    location VARCHAR(50),
    price_range INT
);
-- \d ** to look to see if the table is there **
-- \d restaurants ** to look at the restaurant table in detail **
-- INSTER INTO restaurants(id, name, location, price_range) values(123, 'mcdolands', 'new york', 3) ** to create entry or insert data into table **
-- INSTERT INTO restaurants (id, name, location, price_range) values (124, 'pizza hut', 'vegas', 2);

CREATE TABLE restaurants (
    id BIGSERIAL NOT NULL PRIMARY KEY , 
    name VARCHAR(50) NOT NULL, 
    location VARCHAR(50) NOT NULL, 
    price_range INT NOT NULL check(price_range >= 1 and price_range <= 5)

);
-- INSERT INTO restaurants (id, name, location, price_range) values (123, 'mcdonalds', 'new yorks', 3);
