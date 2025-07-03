use hotel_management;

CREATE TABLE customeres (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    status VARCHAR(20)
);
INSERT INTO customeres (id, name, email, city, status) VALUES
(1, 'Alice', 'alice@example.com', 'Delhi', 'active'),
(2, 'Bob', 'bob@example.com', 'Mumbai', 'inactive'),
(3, 'Charlie', 'charlie@example.com', 'Chennai', 'active'),
(4, 'David', 'david@example.com', 'Kolkata', 'active');
CREATE TABLE orderes (
    id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customeres(id)
);
INSERT INTO orderes (id, customer_id, product, amount, order_date) VALUES
(101, 1, 'Phone', 15000, '2024-06-01'),
(102, 1, 'Laptop', 55000, '2024-06-15'),
(103, 3, 'Tablet', 12000, '2024-06-20'),
(104, 4, 'Headphones', 3000, '2024-06-25'),
(105, 2, 'Monitor', 8000, '2024-06-30');

CREATE VIEW customer_total_spending AS
SELECT c.id, c.name, SUM(o.amount) AS total_spent
FROM customeres c
JOIN orderes o ON c.id = o.customer_id
GROUP BY c.id, c.name;

SELECT * FROM customer_total_spending WHERE total_spent > 1000;

-- secure view 
CREATE VIEW active_customers AS
SELECT id, name, city
FROM customeres
WHERE status = 'active';

SELECT * FROM active_customers;




-- UPDATABLE VIEW
CREATE VIEW new_customer AS
SELECT id, name FROM customeres;

UPDATE new_customer SET name  = 'Ayesha' WHERE id = 1;

SELECT * FROM new_customer;