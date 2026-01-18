-- Step Base sales revenue view
CREATE OR REPLACE VIEW vw_sales_revenue AS
SELECT
    s.sale_id,
    st.store_name,
    st.city,
    p.product_name,
    p.category,
    s.sale_date,
    s.quantity,
    p.price,
    (s.quantity * p.price) AS revenue
FROM sales s
JOIN stores st ON s.store_id = st.store_id
JOIN products p ON s.product_id = p.product_id;

-- Step Test base view
SELECT *
FROM vw_sales_revenue
ORDER BY sale_date;

-- Step Revenue by store
CREATE OR REPLACE VIEW vw_revenue_by_store AS
SELECT
    store_name,
    SUM(revenue) AS total_revenue
FROM vw_sales_revenue
GROUP BY store_name;

-- Step Revenue by product
CREATE OR REPLACE VIEW vw_revenue_by_product AS
SELECT
    product_name,
    SUM(revenue) AS total_revenue
FROM vw_sales_revenue
GROUP BY product_name;

-- Step 8.5: Verify summary views
SELECT * FROM vw_revenue_by_store;
SELECT * FROM vw_revenue_by_product;
