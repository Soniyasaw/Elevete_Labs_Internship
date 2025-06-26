-- Create the database
CREATE DATABASE ecommerce;

-- Use the database
USE ecommerce;

-- Create the categories table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255)
);

-- Create the products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Create the customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20),
    address VARCHAR(255)
);

-- Create the orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    status ENUM('pending', 'processing', 'shipped', 'delivered') DEFAULT 'pending',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the order_items table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create the shipping_details table
CREATE TABLE Shipping_Details (
    shipping_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    zipcode VARCHAR(20),
    country VARCHAR(100),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Insert data into Categories table
INSERT INTO Categories (category_name) VALUES 
('Electronics'),
('Clothing'),
('Books'),
('Furniture'),
('Toys'),
('Sports'),
('Beauty'),
('Food'),
('Accessories'),
('Home Decor');

Select * from categories;


SELECT * FROM PRODUCTS;

-- Insert data into Products table
INSERT INTO Products (product_name, description, price, stock_quantity, category_id) VALUES
('Laptop', '15-inch, Core i7, 16GB RAM', 99999.99, 50, 1),
('Laptop', '13.5-inch, Core i5, 16GB RAM', 69990.99, 1, 1),
('T-shirt', 'Cotton T-shirt, size M, red color', 399.99, 10, 2),
('Python Programming', 'Learn Python programming from scratch', 299.9, 20, 3),
('The Lord of the Rings', 'An epic high fantasy novel', 400.00, 25, 3),
('Sofa', '3-seater fabric sofa', 1499.99, 30, 4),
('LEGO Set', 'Star Wars LEGO set', 799.89, 20, 5),
('Basketball', 'Official size basketball', 500.00, 20, 6),
('Shampoo', 'Moisturizing shampoo', 199.99, 10, 7),
('Chocolate Bar', 'Milk chocolate bar', 29.99, 20, 8),
('Watch', 'Analog wristwatch', 1525.99, 5, 9),
('Throw Pillow', 'Decorative throw pillow', 299.99, 50, 10),
('Laptop', '13-inch, Core i5, 16GB RAM', 79999.99, 40, 1),
('Shirts', 'Cotton Shirt, size L, blue color', 799.99, 10, 2),
('JAVA Basics', 'Learn JAVA programming from scratch', 499.09, 25, 3),
('Sofa', '3-seater fabric sofa', 12499.99, 50, 4),
('Kitchen Set', 'Barbie Kitchen set', 1909.99, 3, 5),
('Chess Board', 'Education Chess Board set', 599.9, 40, 5),
('Tic Tac Toe', 'Tic Tac Toe Classic Mind Challenging', 199.9, 50, 5),
('Basketball', 'Official size basketball', 1299.99, 2, 6),
('Shampoo', 'Moisturizing shampoo', 9.99, 100, 7),
('Chocolate Bar', 'Dark chocolate bar', 159.00, 20, 8),
('Bounty', 'Coconut & Chocolate fused bar', 59.00, 3, 8),
('Kit-Kat', 'Wafer Chocolate bar', 50.00, 13, 8),
('Watch', 'Analog wristwatch', 49.99, 50, 9),
('Watch', 'Smart-watch', 39899.99, 5, 9),
('Cotton Cartoon Pillow', 'Cartoon soft pillow for kids', 499.99, 12, 10);

Select * from products;

-- Insert data into Customers table
INSERT INTO Customers (first_name, last_name, email, phone, address) VALUES
('John', 'Dcruz', 'john.d@xyz.com', '123-456-7890', '123 Main St, City'),
('Daren', 'Smith', 'daren.smith@gmail.com', '987-654-3210', '13th Lane, Thakur Complex'),
('Alia', 'Ahuja', 'alia.ahuja@yahoo.com', '555-123-4567', '7th cross rd, Manori'),
('Bobby', 'Rawat', 'bob.rawat@yahoo.com', '111-222-3333', '101 Lane Mohd Rd, Satara'),
('Premnath', 'Dalai', 'prem.d@gmail.com', '444-555-6666', '222 Cedar St, Beach'),
('Michael', 'Jones', 'michael.jones@xyz.com', '777-888-9999', '13th Church St, Kormangala'),
('Sarah', 'Shah', 'sarah.shah@yahoo.com', '999-999-9999', 'R.no 12 SP rd, Wadala'),
('Rahul', 'Joshi', 'rahul.joshi@gamil.com', '888-888-8888', 'Sector-3 , Kandivali(E)'),
('Karan', 'Gautam', 'karan.g@yahoo.com', '666-666-6666', '66th lane, Malad(W)'),
('Kiran', 'Khamitkar', 'kiran.khamitakr@yahoo.com', '606-006-6262', 'Tulsi Baug, Pune'),
('Rashi', 'Jain', 'rashi.jain@yahoo.com', '144-905-6167', 'Sector 15, Panvel'),
('Jay', 'Aryan', 'jay.a@gmail.com', '222-333-4444', 'Block - 3, Mahad');

Select *from customers;

-- Insert data into Orders table
INSERT INTO Orders (customer_id, order_date, total_amount, status) VALUES
(1, '2024-01-05', 1429.99, 'delivered'),
(1, '2023-07-10', 4529.99, 'delivered'),
(2, '2024-03-06', 2999.99, 'shipped'),
(2, '2023-01-05', 4529.99, 'delivered'),
(1, '2024-03-05', 1429.99, 'pending'),
(3, '2024-02-11', 19999.99, 'delivered'),
(3, '2024-02-29', 6990.99, 'pending'),
(3, '2023-12-23', 4500.00, 'delivered'),
(4, '2024-03-01', 8999.99, 'processing'),
(5, '2024-01-19', 3099.99, 'shipped'),
(5, '2023-10-29', 3209.99, 'delivered'),
(5, '2023-06-19', 2999.99, 'delivered'),
(12, '2023-12-22', 5999.99, 'delivered'),
(6, '2024-03-02', 1499.99, 'processing'),
(6, '2023-06-10', 2490.99, 'delivered'),
(6, '2023-03-24', 7300.79, 'delivered'),
(7, '2023-03-11', 1299.75, 'delivered'),
(7, '2023-09-18', 3299.05, 'delivered'),
(12, '2023-03-11', 9999.75, 'delivered'),
(11, '2023-07-21', 4999.75, 'delivered'),
(10, '2023-03-11', 5999.75, 'delivered'),
(8, '2024-03-12', 6999.89, 'delivered'),
(8, current_date(), 12999.49, 'processing'),
(9, '2024-01-13', 1709.89, 'shipped'),
(9, current_date(), 13999.89, 'processing'),
(10, '2024-02-14', 2549.99, 'delivered');

Select * from Orders;

-- Insert data into Order_Items table
INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1999.99),
(2, 3, 2, 8959.98),
(3, 5, 1, 7509.99),
(4, 7, 1, 9999.99),
(5, 9, 3, 1409.97),
(6, 11, 2, 2229.98),
(7, 13, 1, 3400.99),
(8, 15, 2, 1985.88),
(9, 17, 1, 4949.99),
(10, 19, 4, 5899.96),
(11, 5, 1, 49497.99),
(15, 9, 4, 58994.96);

Select * from Order_items;

-- Insert data into Shipping_Details table
INSERT INTO Shipping_Details (order_id, address, city, state, zipcode, country) VALUES
(1, '123 Main St', 'City', 'Maharashtra', '12345', 'India'),
(2, '13th Lane, Thakur Complex', 'Mumbai', 'Maharashtra', '67890', 'India'),
(3, '7th Cross rd', 'Village', 'Maharashtra', '13579', 'India'),
(4, '101 Lane, Mohd Rd', 'Satara', 'Maharashtra', '24680', 'India'),
(5, '222 Cedar St', 'Gorai Beach', 'Maharashtra', '97531', 'India'),
(6, '13th Church St', 'Bangalore', 'Karnataka', '86420', 'India'),
(7, 'R. NO 12 SP rd', 'Mumbai', 'Maharshtra', '31415', 'India'),
(8, 'Sector-3, Kandivali(E)', 'Mumbai', 'Maharashtra', '27182', 'India'),
(9, '66th lane, Malad(W)', 'Mumbai', 'Maharashtra', '53589', 'India'),
(10, 'Sector 13, Belapur', 'Navi Mumbai', 'Maharashtra', '97932', 'India');

Select * from Shipping_Details;

--------------- 
# JOINS : used to Join two or more tables with each other on the basis of common columns.

# INNER JOIN
 
 # Q. Find the category name for each product in products table.
 select *from products;
 select * from categories;
 
 select *
 from products 
 join categories
 on products.category_id = categories.category_id;

# only fetch product_name, description, category_name
# products.category_id -- if same column name is present in both the table (ambiguous),we want to specify from which table we want that column
select product_name, products.description, category_name, products.category_id
from products 
join categories
on products.category_id = categories.category_id;

# Q. Find out how many products are there in each category name, category_name name should start with F
# and count it in desc order.
select category_name, count(*)
from categories
join products
on products.category_id = categories.category_id
where category_name like "F%"
group by category_name
order by count(*) desc;

# count > 3
select category_name, count(*)
from categories
join products
on products.category_id = categories.category_id
where category_name like "F%"
group by category_name
having count(*) > 3
order by count(*) desc;

# Aliases and selecting all columns from particular table (Product)
select p.* , c.category_name
from categories as c
join products as p
on p.category_id = c.category_id;

# if column name is same in both the table so we can use USING to join both the table
select *
from categories as c
join products as p
using(category_id);
 
## LEFT OUTER JOIN / LEFT JOIN
-- This join returns all the rows of the table on the left side of the join and matches rows for the table on the right side of the join. 
-- For the rows for which there is no matching row on the right side, the result set will contain null.
--  LEFT JOIN is also known as LEFT OUTER JOIN.

# Q. Fetch all the customers data and fetch their orders related info if available.
select * from customers;
select * from orders;

select * 
from customers
left join orders
using (customer_id);


# Q. Fetch the customer_id, status, and final price that they have paid
select c.customer_id, status, round(sum(total_amount)) as amt_paid
from customers as c 
join orders as o
on c.customer_id = o.customer_id
join order_items as oi
on o.order_id = oi.order_id
group by c.customer_id, status
order by o.customer_id desc;

# Q. Find customer whose payments are greater than the average payment using a subquery
# Classicmodel

select avg(amount)
from payments;

select * from payments
where amount > (select round(avg(amount)) from payments);

SELECT 
    customername, payments.customerNumber, creditlimit, amount
FROM
    customers
        JOIN
    payments USING (customerNumber)
WHERE
    amount > (SELECT 
            ROUND(AVG(amount))
        FROM
            payments);
