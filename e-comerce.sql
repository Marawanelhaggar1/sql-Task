DROP DATABASE IF EXISTS SHOP;

CREATE DATABASE SHOP;

USE SHOP;

CREATE TABLE Customers(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
order_id INT,
FOREIGN KEY (order_id) REFERENCES Orders(order_id) 

);

CREATE TABLE Orders(
order_id INT AUTO_INCREMENT  PRIMARY KEY,
total_price INT,
product_id INT,
customer_id INT,
FOREIGN KEY (product_id) REFERENCES Products(product_id) ,
FOREIGN KEY (customer_id) REFERENCES Customer(id) ,
);

CREATE TABLE Products(
name VARCHAR(255),
products_id INT AUTO_INCREMENT  PRIMARY KEY,
price INT,
salesman_id INT,
FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) ,
);

CREATE TABLE Salesman(
salesman_id INT AUTO_INCREMENT  PRIMARY KEY,
name VARCHAR(255),

);



