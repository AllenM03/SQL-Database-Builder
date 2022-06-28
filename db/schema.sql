DROP DATABASE IF EXISTS inventory_db;
CREATE DATABASE inventory_db;

USE inventory_db;

CREATE TABLE Department(
  id INTEGER NOT NULL,
  book_name VARCHAR(30),
  book_description TEXT,
  category_name VARCHAR(30),
  price DECIMAL(10,2),
  in_stock BOOLEAN 
);

CREATE TABLE roles(
  id INTEGER NOT NULL,
  category_name VARCHAR(30),
  category_description TEXT
);

CREATE TABLE roles(
  id INTEGER NOT NULL,
  category_name VARCHAR(30),
  category_description TEXT
);