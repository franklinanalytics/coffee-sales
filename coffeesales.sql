CREATE TABLE coffeesales (
	transaction_id		int PRIMARY KEY,
	transaction_date	date,
	transaction_time	time,
	transaction_qty		int,
	store_id			int,
	store_location		varchar(50),
	product_id			int,
	unit_price			DECIMAL(10,2),
	product_category	varchar(50),
	product_type		varchar(50),
	product_detail		varchar(50)
);

--BASIC DATA EXPLORATION--

--To check all records
SELECT * FROM coffeesales

--To verify Column Names & Data Types
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'coffeesales';

--To verify total number of rows in the dataset
SELECT COUNT(*) FROM coffeesales

/* To find missing values
SELECT 
    COUNT(*) AS total_records,
    SUM(CASE WHEN transaction_time IS NULL THEN 1 ELSE 0 END) AS missing_transaction_time,
    SUM(CASE WHEN transaction_qty IS NULL THEN 1 ELSE 0 END) AS missing_transaction_qty,
    SUM(CASE WHEN store_location IS NULL THEN 1 ELSE 0 END) AS missing_store_location
FROM coffeesales;*/

--To check for missing values on each column
--transaction_id
SELECT * FROM coffeesales 
WHERE transaction_id IS NULL;
--transaction_date
SELECT * FROM coffeesales 
WHERE transaction_date IS NULL;
--transaction_time
SELECT * FROM coffeesales 
WHERE transaction_time IS NULL;
--transaction_qty
SELECT * FROM coffeesales 
WHERE transaction_qty IS NULL;
--store_id
SELECT * FROM coffeesales 
WHERE store_id IS NULL;
--store_location
SELECT * FROM coffeesales 
WHERE store_location IS NULL;
--product_id
SELECT * FROM coffeesales 
WHERE product_id IS NULL;
--unit_price
SELECT * FROM coffeesales 
WHERE unit_price IS NULL;
--product_category
SELECT * FROM coffeesales 
WHERE product_category IS NULL;
--product_type
SELECT * FROM coffeesales 
WHERE product_type IS NULL;
--product_detail		
SELECT * FROM coffeesales 
WHERE product_detail IS NULL;

--SALES PERFORMANCE ANALYSIS

--Total Sales Revenue
SELECT SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales;

--Top 5 Best-selling coffee product types
SELECT product_type, SUM(transaction_qty) AS total_sold
FROM coffeesales
GROUP BY product_type
ORDER BY total_sold DESC
LIMIT 5;

--5 Least-Selling coffee product types
SELECT product_type, SUM(transaction_qty) AS total_sold
FROM coffeesales
GROUP BY product_type
ORDER BY total_sold ASC
LIMIT 5;

--Best Performing Store locations
SELECT store_location, SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales
GROUP BY store_location
ORDER BY total_revenue DESC;

--Daily Sales trend
SELECT 
	DATE(transaction_date) AS sales_date, 
	SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales
GROUP BY sales_date
ORDER BY sales_date;

/*Weekdays Revenue Analysis
This is important to find out which days bring the most or least sales 
and is useful for promotional planning*/
SELECT 
    TO_CHAR(transaction_date, 'Day') AS sales_day, 
    SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales
GROUP BY sales_day
ORDER BY total_revenue DESC;

--Monthly Sales Trend
SELECT 
	DATE_TRUNC('month', transaction_date) AS sales_month,
    TO_CHAR(transaction_date, 'Month') AS sales_month_char, 
    SUM(transaction_qty * unit_price) AS total_revenue
FROM coffeesales
GROUP BY sales_month, sales_month_char
ORDER BY sales_month;

--Peak Sales hour
SELECT 
    EXTRACT(HOUR FROM transaction_time) AS sales_hour, 
    SUM(transaction_qty) AS total_sales
FROM coffeesales
GROUP BY sales_hour
ORDER BY total_sales DESC;

/*Price Sensitivity Analysis. 
This is important to analyze how price affects quantity sold*/
SELECT unit_price, SUM(transaction_qty) AS total_sold
FROM coffeesales
GROUP BY unit_price
ORDER BY total_sold SC;
