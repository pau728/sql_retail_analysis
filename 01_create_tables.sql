INSERT INTO stores (store_name, city) VALUES
('Central Store', 'Belfast'),
('Riverside Store', 'Derry'),
('City Mall Store', 'Belfast');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 899.99),
('Headphones', 'Electronics', 149.99),
('Office Chair', 'Furniture', 199.99),
('Desk Lamp', 'Furniture', 39.99);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    store_id INT REFERENCES stores(store_id),
    product_id INT REFERENCES products(product_id),
    sale_date DATE,
    quantity INT
);

