USE ecommerce_analysis;

-- =========================================
-- INSERT CATEGORIES
-- =========================================

INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home Appliances'),
('Sports');


-- =========================================
-- INSERT CUSTOMERS
-- =========================================

INSERT INTO customers (customer_name, email, city, signup_date) VALUES
('Arjun Kumar', 'arjun@gmail.com', 'Hyderabad', '2025-01-10'),
('Priya Sharma', 'priya@gmail.com', 'Visakhapatnam', '2025-01-15'),
('Rahul Reddy', 'rahul@gmail.com', 'Bangalore', '2025-02-01'),
('Sneha Rao', 'sneha@gmail.com', 'Chennai', '2025-02-12'),
('Kiran Patel', 'kiran@gmail.com', 'Mumbai', '2025-03-05'),
('Anjali Singh', 'anjali@gmail.com', 'Delhi', '2025-03-18'),
('Vikram Das', 'vikram@gmail.com', 'Kolkata', '2025-04-01'),
('Meera Nair', 'meera@gmail.com', 'Kochi', '2025-04-14'),
('Rohit Verma', 'rohit@gmail.com', 'Pune', '2025-05-02'),
('Divya Reddy', 'divya@gmail.com', 'Hyderabad', '2025-05-20'),
('Amit Kumar', 'amit@gmail.com', 'Bangalore', '2025-06-01'),
('Neha Gupta', 'neha@gmail.com', 'Delhi', '2025-06-15'),
('Suresh Babu', 'suresh@gmail.com', 'Visakhapatnam', '2025-07-01'),
('Pooja Shah', 'pooja@gmail.com', 'Mumbai', '2025-07-18'),
('Ravi Teja', 'ravi@gmail.com', 'Hyderabad', '2025-08-05');


-- =========================================
-- INSERT PRODUCTS
-- =========================================

INSERT INTO products (product_name, category_id, price, stock) VALUES
('Laptop', 1, 55000.00, 20),
('Smartphone', 1, 30000.00, 35),
('Wireless Mouse', 1, 800.00, 100),
('Headphones', 1, 2500.00, 60),
('Smart Watch', 1, 5000.00, 40),

('T-Shirt', 2, 700.00, 100),
('Jeans', 2, 1800.00, 70),
('Jacket', 2, 3000.00, 40),

('SQL Fundamentals', 3, 600.00, 50),
('Java Programming', 3, 750.00, 45),
('Data Structures', 3, 850.00, 40),

('Mixer Grinder', 4, 3500.00, 30),
('Electric Kettle', 4, 1500.00, 50),
('Table Fan', 4, 2200.00, 35),

('Cricket Bat', 5, 2500.00, 25),
('Football', 5, 1200.00, 50),
('Yoga Mat', 5, 900.00, 60);


-- =========================================
-- INSERT ORDERS
-- =========================================

INSERT INTO orders (customer_id, order_date, order_status) VALUES
(1, '2025-06-05', 'Delivered'),
(2, '2025-06-10', 'Delivered'),
(3, '2025-06-18', 'Delivered'),
(1, '2025-07-02', 'Delivered'),
(4, '2025-07-08', 'Delivered'),
(5, '2025-07-15', 'Cancelled'),
(6, '2025-07-20', 'Delivered'),
(2, '2025-08-01', 'Delivered'),
(7, '2025-08-05', 'Delivered'),
(8, '2025-08-12', 'Delivered'),
(3, '2025-08-18', 'Delivered'),
(9, '2025-09-01', 'Delivered'),
(10, '2025-09-05', 'Delivered'),
(1, '2025-09-12', 'Delivered'),
(11, '2025-09-18', 'Pending'),
(12, '2025-09-22', 'Delivered'),
(13, '2025-10-02', 'Delivered'),
(2, '2025-10-08', 'Delivered'),
(14, '2025-10-12', 'Delivered'),
(15, '2025-10-18', 'Pending');


-- =========================================
-- INSERT ORDER ITEMS
-- =========================================

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 55000.00),
(1, 3, 2, 800.00),

(2, 2, 1, 30000.00),
(2, 4, 1, 2500.00),

(3, 6, 2, 700.00),
(3, 7, 1, 1800.00),

(4, 5, 1, 5000.00),
(4, 9, 1, 600.00),

(5, 12, 1, 3500.00),
(5, 13, 1, 1500.00),

(6, 8, 1, 3000.00),

(7, 10, 1, 750.00),
(7, 11, 1, 850.00),

(8, 3, 2, 800.00),
(8, 4, 1, 2500.00),

(9, 15, 1, 2500.00),
(9, 16, 2, 1200.00),

(10, 13, 1, 1500.00),
(10, 14, 1, 2200.00),

(11, 2, 1, 30000.00),

(12, 6, 3, 700.00),
(12, 7, 1, 1800.00),

(13, 17, 2, 900.00),

(14, 1, 1, 55000.00),
(14, 5, 1, 5000.00),

(15, 9, 2, 600.00),

(16, 12, 1, 3500.00),

(17, 15, 1, 2500.00),

(18, 4, 2, 2500.00),

(19, 8, 1, 3000.00),
(19, 6, 2, 700.00),

(20, 10, 1, 750.00),
(20, 11, 1, 850.00);


-- =========================================
-- INSERT PAYMENTS
-- =========================================

INSERT INTO payments (order_id, payment_method, amount, payment_date) VALUES
(1, 'UPI', 56600.00, '2025-06-05'),
(2, 'Credit Card', 32500.00, '2025-06-10'),
(3, 'UPI', 3200.00, '2025-06-18'),
(4, 'Debit Card', 5600.00, '2025-07-02'),
(5, 'UPI', 5000.00, '2025-07-08'),
(7, 'Credit Card', 1600.00, '2025-07-20'),
(8, 'UPI', 4100.00, '2025-08-01'),
(9, 'Debit Card', 4900.00, '2025-08-05'),
(10, 'UPI', 3700.00, '2025-08-12'),
(11, 'Credit Card', 30000.00, '2025-08-18'),
(12, 'UPI', 3900.00, '2025-09-01'),
(13, 'Debit Card', 1800.00, '2025-09-05'),
(14, 'Credit Card', 60000.00, '2025-09-12'),
(16, 'UPI', 3500.00, '2025-09-22'),
(17, 'UPI', 2500.00, '2025-10-02'),
(18, 'Credit Card', 5000.00, '2025-10-08'),
(19, 'UPI', 4400.00, '2025-10-12');
