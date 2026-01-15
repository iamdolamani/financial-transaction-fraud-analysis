# Financial Transaction & Fraud Analysis (SQL | PostgreSQL)

## 🚀 Project Overview
This project analyzes financial transaction data to uncover **business insights and fraud patterns** using **SQL (PostgreSQL)**.

The goal is to demonstrate a **SQL-first analytics approach**, where business logic, aggregations, and insights are handled at the database level before moving to BI tools.

This mirrors how real analytics teams support **product, marketing, operations, and risk** decision-making.

---

## 📂 Dataset Summary
The dataset represents credit card transactions with attributes such as:
- Transaction date & time  
- Merchant and category  
- Transaction amount  
- City and city population  
- Customer demographics (gender, job)  
- Fraud indicator (0 = non-fraud, 1 = fraud)  

> Raw data files are intentionally not included to keep the repository clean and privacy-safe.

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


Each file represents a logical analytics layer, similar to how SQL scripts are organized in real-world analytics projects.

---

## 📊 Key Analysis Performed

### 🔹 Data Health & Core Metrics
- Total transactions and total revenue
- Average Transaction Value (AOV)
- Date range validation
- Fraud vs non-fraud transaction counts

### 🔹 Time-Based Analysis
- Daily and monthly transaction trends
- Month-on-Month (MoM) growth analysis

### 🔹 Merchant & Category Insights
- Top merchants by transaction value
- Category-wise transaction volume and revenue
- Merchant ranking using SQL window functions

### 🔹 Location Analysis
- City-wise transaction value
- Top cities by revenue
- City population vs transaction value (conceptual analysis)

### 🔹 Customer Demographics
- Transaction behavior by gender
- Profession-wise transaction contribution

### 🔹 Fraud Analysis (Key Focus)
- Fraud transaction count and fraud percentage
- Fraud vs non-fraud transaction value comparison
- High-risk categories and cities
- Average fraud transaction amount vs normal transactions

---

## 🧠 Key Learnings
- Importance of correct aggregation levels in analytics
- Clear distinction between counts, values, and averages
- Practical use of window functions for ranking problems
- Why pushing logic into SQL simplifies downstream BI dashboards

---

## 👤 Author
**Dolamani Sahu**  
Aspiring Data Analyst | SQL | PostgreSQL | Power BI (in progress)
