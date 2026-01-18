INSERT INTO stores (store_name, city) VALUES
('Central Store', 'Belfast'),
('Riverside Store', 'Derry'),
('City Mall Store', 'Belfast');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 899.99),
('Headphones', 'Electronics', 149.99),
('Office Chair', 'Furniture', 199.99),
('Desk Lamp', 'Furniture', 39.99);

-- Insert sales transactions
INSERT INTO sales (store_id, product_id, sale_date, quantity) VALUES
(1, 1, '2025-01-05', 2),
(1, 2, '2025-01-06', 5),
(2, 3, '2025-01-06', 1),
(3, 4, '2025-01-07', 3),
(3, 1, '2025-01-08', 1);

