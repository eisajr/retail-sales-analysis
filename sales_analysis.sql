-- sales_analysis.sql
-- Author: Eisa Ashraf
-- Project: Retail Sales Funnel Analysis using SQL
-- Description: Analyze conversion rates and drop-offs in a retail sales funnel

-- Total counts at each funnel stage
SELECT
  SUM(leads) AS total_leads,
  SUM(product_views) AS total_views,
  SUM(carts) AS total_carts,
  SUM(purchases) AS total_purchases
FROM sales_data;

-- Conversion rate: leads to views
SELECT
  ROUND(SUM(product_views) * 100.0 / NULLIF(SUM(leads), 0), 2) AS leads_to_views_pct
FROM sales_data;

-- Conversion rate: views to carts
SELECT
  ROUND(SUM(carts) * 100.0 / NULLIF(SUM(product_views), 0), 2) AS views_to_carts_pct
FROM sales_data;

-- Conversion rate: carts to purchases
SELECT
  ROUND(SUM(purchases) * 100.0 / NULLIF(SUM(carts), 0), 2) AS carts_to_purchases_pct
FROM sales_data;

--  Weekly funnel breakdown (if you have a 'date' column)
SELECT
  DATE_TRUNC('week', date) AS week_start,
  SUM(leads) AS leads,
  SUM(product_views) AS views,
  SUM(carts) AS carts,
  SUM(purchases) AS purchases
FROM sales_data
GROUP BY 1
ORDER BY 1;

--  Conversion rate by product category (if category exists)
SELECT
  category,
  ROUND(SUM(carts) * 100.0 / NULLIF(SUM(product_views), 0), 2) AS view_to_cart_pct,
  ROUND(SUM(purchases) * 100.0 / NULLIF(SUM(carts), 0), 2) AS cart_to_purchase_pct
FROM sales_data
GROUP BY category
ORDER BY category;
