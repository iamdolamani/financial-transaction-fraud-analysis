📆 SECTION 2: TIME-BASED ANALYSIS (VERY IMPORTANT)

-----------------------------------------------------------------------------------------------------
--Daily transaction count and value
SELECT
    transaction_date,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS transaction_value
FROM transactions_fact
GROUP BY transaction_date
ORDER BY transaction_date DESC;

--Monthly transaction count and value
SELECT
    DATE_TRUNC('month', transaction_date)::date AS month,
    COUNT(*) AS transaction_count,
    SUM(transaction_amount) AS transaction_value
FROM transactions_fact
GROUP BY month
ORDER BY month DESC;

--Month-on-month growth in transaction value
SELECT
    month,
    transaction_value,
    transaction_value
      - LAG(transaction_value) OVER (ORDER BY month) AS mom_change
FROM (
    SELECT
        DATE_TRUNC('month', transaction_date)::date AS month,
        SUM(transaction_amount) AS transaction_value
    FROM transactions_fact
    GROUP BY month
) t;


--Peak transaction hour of the day
select max(transaction_amount)as peak_hour,transaction_date 
	from transactions_fact
	where transaction_date='peak_hour'
	


Weekday vs weekend transaction comparison

👉 Purpose: Real business questions. Interview favourite.
