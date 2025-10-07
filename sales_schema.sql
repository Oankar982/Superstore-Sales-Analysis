-- ===== Create database if not exists =====
CREATE DATABASE IF NOT EXISTS sales_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE sales_db;

-- ===== Drop old table if exists =====
DROP TABLE IF EXISTS sales_table;

-- ===== Create table with all columns from cleaned CSV =====
CREATE TABLE sales_table (
    order_id VARCHAR(100),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(100),
    customer_name VARCHAR(255),
    segment VARCHAR(100),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    region VARCHAR(100),
    product_id VARCHAR(100),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name VARCHAR(500),
    sales DECIMAL(15,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(15,2),
    profit_margin DECIMAL(12,6),
    profit_margin_pct DECIMAL(12,6),
    month_str VARCHAR(7),
    year INT,
    month VARCHAR(7)
);
