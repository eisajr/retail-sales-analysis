# 🛍️ Retail Sales Funnel Analysis

This project analyzes a retail sales funnel using SQL, focusing on understanding customer drop-off between funnel stages such as leads, product views, carts, and purchases. The goal is to uncover insights that can optimize the conversion process and improve business outcomes.

## 📊 Dataset

- **File**: `sales_data.csv`
- **Records**: 30 days of simulated retail activity
- **Columns**:
  - `date`: Daily timestamp
  - `leads`: Number of potential customers who visited the site
  - `product_views`: Customers who viewed products
  - `carts`: Customers who added products to cart
  - `purchases`: Completed transactions
  - `category`: Product category (Electronics, Clothing, etc.)

## 🧠 Project Objectives

- Calculate overall conversion rates between each funnel stage
- Identify drop-off patterns by week and by product category
- Provide recommendations to improve the customer journey

## 🛠️ Tools & Skills Used

- **SQL**: Data analysis and reporting
- **MySQL Workbench**: Query execution and data management
- **Data Cleaning**: Conversion logic, null safety, category analysis
- **(Power BI / Tableau)**: Visualization (not included here)

## 🧾 Key SQL Queries

- Total customers at each funnel stage
- Conversion rate: leads → views → carts → purchases
- Weekly funnel performance
- Funnel conversion by product category

> View the SQL code here: [`sales_analysis.sql`](./sales_analysis.sql)

## 📁 File Structure

