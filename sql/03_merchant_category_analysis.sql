🏪 SECTION 3: MERCHANT & CATEGORY ANALYSIS

-----------------------------------------------------------------------------------------------
--Total transaction value by merchant
SELECT
    merchant_name,
    SUM(transaction_amount) AS revenue
FROM transactions_fact
GROUP BY merchant_name
ORDER BY revenue DESC;

--Top 5 merchants by transaction value
SELECT
    merchant_name,
    SUM(transaction_amount) AS revenue
FROM transactions_fact
GROUP BY merchant_name
ORDER BY revenue DESC
LIMIT 5;

--wf
SELECT
    merchant_name,
    revenue
FROM (
    SELECT
        merchant_name,
        SUM(transaction_amount) AS revenue,
        RANK() OVER (ORDER BY SUM(transaction_amount) DESC) AS rnk
    FROM transactions_fact
    GROUP BY merchant_name
) t
WHERE rnk <= 5;


--Average transaction value per merchant
select merchant_name,
	round(avg(transaction_amount),2) as ATV
from transactions_fact
group by merchant_name
order by ATV


--Category-wise transaction count
SELECT
    category,
    COUNT(*) AS transaction_count
FROM transactions_fact
GROUP BY category;


--Category-wise transaction value
select category,
	sum(transaction_amount) as transactions_value
from transactions_fact
group by category

--Top category contributing to revenue
SELECT
    category,
    SUM(transaction_amount) AS transaction_value
FROM transactions_fact
GROUP BY category
ORDER BY transaction_value DESC
LIMIT 1;

👉 Purpose: Product + business insight.