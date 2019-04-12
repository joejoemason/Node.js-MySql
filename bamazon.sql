DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products
(
    item_id INTEGER
    AUTO_INCREMENT NOT NULL,
product_name VARCHAR
    (75),
department_name VARCHAR
    (50),
price INTEGER
    (10),
stock_quantity INTEGER
    (10),
primary key
    (item_id)
);

    
INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Basetball Shorts', 'Apparel', '30', '100');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Baker Oven', 'Appliance', '40', '25');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Ball', 'Toys', '40', '15');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Computer', 'Appliance', '900', '25');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Drone', 'Technology', '1850', '48');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('iphone', 'Phones', '1125', '20');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Super Soaker', 'Toys', '55', '25');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Playstation', 'Toys', '10', '22');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Samsung', 'Phones', '925', '15');
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    values
        ('Bed', 'Household', '1', '1300');

    SELECT *
    FROM products.stock_quantity;