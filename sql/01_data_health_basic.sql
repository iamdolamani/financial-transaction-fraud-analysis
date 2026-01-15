----------------------------------------
🧱 SECTION 1: DATA HEALTH & BASICS (FOUNDATION)
----------------------------------------

--Total number of transactions
	SELECT count(transaction_id)from transactions_fact


--Total transaction value (overall revenue)
	select sum(transaction_amount) from transactions_fact


--Average transaction value (AOV)
SELECT
    ROUND(AVG(transaction_amount), 2) AS aov
FROM transactions_fact;


--Minimum and maximum transaction amount
SELECT
    MIN(transaction_amount) AS min_amount,
    MAX(transaction_amount) AS max_amount
FROM transactions_fact;


--Number of unique merchants
SELECT COUNT(*) AS unique_merchants
FROM merchants;


--Number of unique cities
SELECT COUNT(DISTINCT city) AS unique_cities
FROM transactions_fact;


--Date range of transactions (first & last transaction date)
SELECT
    MIN(transaction_date) AS first_transaction_date,
    MAX(transaction_date) AS last_transaction_date
FROM transactions_fact;


--Count of fraudulent vs non-fraudulent transactions
SELECT
    is_fraud,
    COUNT(*) AS transaction_count
FROM transactions_fact
GROUP BY is_fraud;

--
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN is_fraud = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_percentage
FROM transactions_fact;
👉 Purpose: Dataset samajh aaya ya nahi, ye section prove karta hai.

