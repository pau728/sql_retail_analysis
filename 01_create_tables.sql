CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price NUMERIC(10,2)
);

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    store_id INT REFERENCES stores(store_id),
    product_id INT REFERENCES products(product_id),
    sale_date DATE,
    quantity INT
);

