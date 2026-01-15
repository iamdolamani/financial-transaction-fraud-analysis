# Financial Transaction & Fraud Analysis (SQL | PostgreSQL)

## 🎯 Business Problem & Use Case
Financial transaction data contains critical signals for **revenue growth, customer behavior, and fraud risk**.  
This project focuses on answering practical business and risk questions using **SQL-first analytics**, similar to how data analysts support **product, marketing, operations, and fraud teams**.

Key questions addressed:
- Which merchants, cities, and categories drive the most revenue?
- How do transaction volumes and values change over time?
- What proportion of transactions are fraudulent?
- Which segments exhibit the highest fraud risk?
- How do fraud transactions differ from normal transactions in value?

---

## 🚀 Project Overview
This project analyzes financial transaction data using **SQL (PostgreSQL)** to uncover **business insights and fraud patterns**.

The core objective is to demonstrate a **database-driven analytics approach**, where:
- Aggregations and logic are handled in SQL  
- Metrics are built at the correct aggregation level  
- Outputs are BI-ready with minimal downstream transformation  

This mirrors real-world analytics workflows where SQL serves as the foundation for reporting and decision-making.

---

## 📂 Dataset Summary
The dataset represents credit card transactions with attributes such as:
- Transaction date & time  
- Merchant and category  
- Transaction amount  
- City and city population  
- Customer demographics (gender, job)  
- Fraud indicator (0 = non-fraud, 1 = fraud)

> Raw data files are intentionally excluded to keep the repository clean and privacy-safe.

---

## 🛠 Tech Stack
- **PostgreSQL**
- **SQL**
  - Aggregations
  - CASE WHEN
  - Window Functions
  - Date & Time analysis

---

## 📁 Project Structure
    sql/
├── 01_data_health_basics.sql
├── 02_time_based_analysis.sql
├── 03_merchant_category_analysis.sql
├── 04_location_based_analysis.sql
├── 05_customer_demographic_insights.sql
├── 06_fraud_analysis.sql
├── 07_ranking_and_window_functions.sql
└── 08_kpi_summary.sql



Each file represents a **logical analytics layer**, similar to how SQL scripts are organized in production analytics environments.

---

## 📊 Key Analysis Performed

### 🔹 Data Health & Core Metrics
- Total transactions and total revenue
- Average Transaction Value (AOV)
- Minimum and maximum transaction values
- Date range validation
- Fraud vs non-fraud transaction counts

### 🔹 Time-Based Analysis
- Daily transaction count and value
- Monthly transaction trends
- Month-on-Month (MoM) growth in transaction value

### 🔹 Merchant & Category Insights
- Total revenue by merchant
- Top merchants by transaction value
- Category-wise transaction volume and revenue
- Merchant ranking using SQL window functions

### 🔹 Location Analysis
- City-wise transaction value
- Top cities by revenue
- City population vs transaction value (conceptual correlation)

### 🔹 Customer Demographics
- Transaction count by gender
- Average transaction value by gender
- Profession-wise transaction contribution
- Top professions by transaction amount

### 🔹 Fraud Analysis (Primary Focus)
- Total fraud transaction count
- Fraud transaction percentage
- Fraud vs non-fraud transaction value comparison
- High-risk categories and cities
- Average fraud transaction amount vs normal transactions

---


## 🧠 Key Learnings
- Correct aggregation levels are critical for accurate insights
- Clear distinction between **count**, **value**, and **average** metrics
- Window functions simplify ranking and comparison problems
- SQL-first analytics reduces complexity in BI dashboards
- Clean structure improves readability and reusability of analysis

---

## 👤 Author
**Dolamani Sahu**  
Aspiring Data Analyst | SQL | PostgreSQL | Power BI (in progress)
