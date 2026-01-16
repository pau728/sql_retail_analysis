CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO stores (store_name, city) VALUES
('Central Store', 'Belfast'),
('Riverside Store', 'Derry'),
('City Mall Store', 'Belfast');


CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price NUMERIC(10,2)
);

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 899.99),
('Headphones', 'Electronics', 149.99),
('Office Chair', 'Furniture', 199.99),
('Desk Lamp', 'Furniture', 39.99);
