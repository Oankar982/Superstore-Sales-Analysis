# Superstore Sales Analysis Project

## **Project Overview**

This project is an end-to-end **Sales Analysis** of a Superstore dataset. The main objective is to clean and analyze sales data, store it in a relational database (MySQL), and build an interactive **Power BI dashboard** for visual insights.  

The project demonstrates **real-world data analyst skills**, including data cleaning, exploratory data analysis (EDA), database management, and business intelligence visualization.

---

## **Dataset**

- Source: `Superstore.csv`  
- Number of rows: ~10,000  
- Key columns:
  - `order_id`, `order_date`, `ship_date`, `customer_name`, `segment`
  - `region`, `category`, `sub_category`, `product_name`
  - `sales`, `profit`, `discount`, `quantity`
  - Calculated fields: `profit_margin`, `profit_margin_pct`, `month_str`, `year`, `month`

---

## **Tech Stack**

- **Python**: pandas, numpy, matplotlib, seaborn → Data cleaning & EDA  
- **MySQL**: Store cleaned dataset & perform queries  
- **Power BI**: Interactive dashboards & visualizations  

---

## **Project Steps**

### 1. Data Cleaning & EDA (Python)

- Loaded `Superstore.csv` into pandas  
- Normalized column names and removed duplicates  
- Handled missing values and converted dates & numeric columns  
- Created calculated fields:
  - `profit_margin = profit / sales`
  - `profit_margin_pct = profit_margin * 100`
  - `month_str` (YYYY-MM) and `month`  
- Performed EDA with visualizations:
  - Sales by category and region  
  - Monthly sales trend  
  - Top 10 products  
  - Discount vs profit scatter plot  
- Saved cleaned CSV as `cleaned_sales.csv`  

---

### 2. MySQL Upload

- Created database `sales_db` and table `sales_table` with all necessary columns  
- Uploaded cleaned CSV to MySQL using Python (`mysql.connector`)  
- Handled:
  - NaN → None conversion  
  - Period columns → string  
  - Date columns → `YYYY-MM-DD` format  
  - Batch insertion for large datasets  

---

### 3. Power BI Dashboard

- Connected Power BI to MySQL (`sales_db`)  
- Dashboard includes:
  - **KPIs:** Total Sales, Total Profit, Average Discount  
  - **Sales by Category & Region**  
  - **Top 10 Products**  
  - **Monthly Sales Trend**  
  - **Profit vs Discount Analysis**  
  - **Segment Analysis**  
  - **Interactive slicers:** Region, Category, Segment, Year  

- Optional Enhancements:
  - Forecasting monthly sales trends  
  - Profit Margin heatmap by Category & Region  

---

## **Folder Structure**

Superstore_Project/
│
├─ data/
│ └─ Superstore.csv
│ └─ cleaned_sales.csv
│
├─ notebooks/
│ └─ 01_data_cleaning.ipynb
│
│
├─ PowerBI/
│ └─ Superstore_Dashboard.pbix

---

## **Key Insights**

- Top performing products and categories contribute the most to revenue  
- Regional sales vary significantly, with certain regions being more profitable  
- Monthly trends indicate seasonality in sales  
- Discounts have a measurable impact on profits  
- Customer segments analysis highlights which segments are most profitable  

---
