SELECT * FROM stores;
SELECT * FROM products;
SELECT * FROM sales;

-- Base sales dataset with revenue
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
JOIN products p ON s.product_id = p.product_id
ORDER BY s.sale_date;

-- STEP 7.3: Revenue by store
SELECT
    st.store_name,
    SUM(s.quantity * p.price) AS total_revenue
FROM sales s
JOIN stores st ON s.store_id = st.store_id
JOIN products p ON s.product_id = p.product_id
GROUP BY st.store_name
ORDER BY total_revenue DESC;
