🚨 SECTION 6: FRAUD ANALYSIS (VERY HIGH VALUE)

-------------------------------------------------------------------------------------------
--Total number of fraudulent transactions
select count(is_fraud)as fraud_transactions from transactions_fact
where is_fraud=1

--Percentage of fraudulent transactions
select round
			(100.0 * sum(case when is_fraud= 1 then 1 else 0 end )/count(*),2)
			as fraud_percentage
		from transactions_fact

--Fraud vs non-fraud transaction value comparison
SELECT
	is_fraud,
    sum(case when is_fraud=1 then transaction_amount end )as fraud_transaction,
	sum(case when is_fraud=0 then transaction_amount end )as legit_transaction
FROM transactions_fact
GROUP BY is_fraud;
--------
SELECT
    is_fraud,
    SUM(transaction_amount) AS transaction_value
FROM transactions_fact
GROUP BY is_fraud;


---Categories with highest fraud count
select category,count(*)as fraud_count from transactions_fact
		where is_fraud=1	
		group by category
		order by fraud_count desc
		limit 1

--Cities with highest fraud occurrences
select city,count(*) as fraud_count
		from transactions_fact
		where is_fraud=1
		group by city
		order by fraud_count desc
		limit 1
		
--Average fraud transaction amount vs normal transactions

     SELECT
    ROUND(AVG(CASE WHEN is_fraud = 1 THEN transaction_amount END), 2) AS avg_fraud_amount,
    ROUND(AVG(CASE WHEN is_fraud = 0 THEN transaction_amount END), 2) AS avg_normal_amount
FROM transactions_fact;

-------Comparisons should be made on the same aggregation level to avoid misleading insights  

👉 Purpose: This screams fintech / finance analytics.
