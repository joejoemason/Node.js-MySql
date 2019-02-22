DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE Products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(45) NOT NULL,
    price INT DEFAULT 0,
    stock_quantity INT DEFAULT 0,
    PRIMARY KEY (item_id)
);
 decribe Products;

 select * from Products;

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Timberland", "boots", 190, 20);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Cole Haan", "boots", 230, 15);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Levis", "clothing", 65, 25);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Zara Crewneck", "clothing", 40, 30);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Zara Hoodie", "clothing", 35, 20);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Raybans", "accessories", 190, 20);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("New Era Hat", "accessories", 45, 18);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Belt", "accessories", 35, 10);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Cuban Link Chain", "jewelry", 350, 9);

INSERT INTO Products (product_name, department_name, price, stock_quantity)
VALUES ("Tommy Jacket", "clothing", 175, 15);

select * from Products;



