
-- =====================================================
-- ANALYSIS 1: Revenue by Country
-- =====================================================

-- Analysis: Revenue by Country
-- Objective: Identify which country generates the highest total revenue
-- Method: Aggregate revenue using quantity * unitprice and group results by country

SELECT
  country,
  ROUND(SUM(quantity*unitprice),0) AS total_revenue
FROM online_retail
GROUP BY country
ORDER BY total_revenue DESC
LIMIT 10;

-- Result Overview:
-- The United Kingdom generates by far the highest revenue (~7.3M),
-- followed by the Netherlands (~285K) and EIRE (~266K).
-- This indicates a strong concentration of sales in the UK market,
-- with significantly lower revenue contributions from other countries.


-- =====================================================
-- ANALYSIS 2: Most Frequently Sold Products
-- =====================================================

-- Analysis: Most Frequently Sold Products
-- Objective: Identify which products are sold most frequently by total quantity
-- Method: Aggregate total quantity sold per product and rank results in descending order

SELECT
  description,
  SUM(quantity) AS total_quantity_sold
FROM online_retail
GROUP BY description
ORDER BY total_quantity_sold DESC
LIMIT 10;

-- Result Overview:
-- The most frequently sold product is "PAPER CRAFT , LITTLE BIRDIE" (~81K units),
-- followed by "MEDIUM CERAMIC TOP STORAGE JAR" (~78K units) and
-- "WORLD WAR 2 GLIDERS ASSTD DESIGNS" (~54K units).
-- These results indicate high demand for small decorative and gift-related items,
-- which aligns with the retailer’s product focus.


--------------------------------------------------------
-- ANALYSIS 3: Revenue Over Time
--------------------------------------------------------

-- Objective: Analyze how total revenue evolves over time
-- Method: Aggregate revenue per month using invoice date


SELECT
  DATE_TRUNC('month', invoicedate) AS month,
  ROUND(SUM(quantity * unitprice), 0) AS total_revenue
FROM online_retail
GROUP BY month
ORDER BY month;

-- Result Overview:
-- Revenue is relatively stable in early 2011, with a dip in February.
-- From May onward, revenue shows a clear upward trend,
-- peaking in November (~1.16M).
-- December revenue is lower, likely due to incomplete data for the month.