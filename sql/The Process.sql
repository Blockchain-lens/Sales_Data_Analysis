
-- MySQL Sales Analysis
-- Data Source: data/sales_data.csv

-- 1. Top 10 Clients

SELECT customerName, SUM(sales) AS revenue
FROM sales
GROUP BY customerName
ORDER BY revenue DESC
LIMIT 10;

-- 2. Sales by Country

SELECT country, SUM(sales) AS revenue
FROM sales
GROUP BY country
ORDER BY revenue DESC;

-- 3. Percentage of Product Line

SELECT productLine, SUM(sales) AS revenue
FROM sales
GROUP BY productLine
ORDER BY revenue DESC;


-- 4. Total Orders and Average Orders
SELECT 
    country,
    COUNT(orderNumber) AS total_orders,
    AVG(sales) AS avg_order_value
FROM sales_data
GROUP BY country;


-- 5. Revenue by Month To Identify Peak Sales period
SELECT 
    MONTH(STR_TO_DATE(orderDate, '%m/%d/%Y %H:%i')) AS month,
    SUM(sales) AS revenue
FROM sales_data
GROUP BY month
ORDER BY revenue DESC;

-- 6. Correlation Between Revenue and Orders Based on a Particular Product

SELECT 
    productLine,
    COUNT(orderNumber) AS total_orders,
    SUM(sales) AS revenue
FROM sales
GROUP BY productLine;

-- 7. Order Status

SELECT 
    status,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY status;


-- 8. Revenue Percentage based on Product

SELECT 
    productLine,
    SUM(sales) AS revenue,
    SUM(sales) / (SELECT SUM(sales) FROM sales_data) * 100 AS percentage
FROM sales_data
GROUP BY productLine;


-- 9.Order size based on sales

SELECT 
    CASE 
        WHEN sales < 1000 THEN 'Small'
        WHEN sales BETWEEN 1000 AND 5000 THEN 'Medium'
        ELSE 'Large'
    END AS order_size,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY order_size;

-- 10. Customer frequency Analysis

SELECT 
    customerName,
    COUNT(orderNumber) AS order_count
FROM sales_data
GROUP BY customerName
ORDER BY order_count DESC;
