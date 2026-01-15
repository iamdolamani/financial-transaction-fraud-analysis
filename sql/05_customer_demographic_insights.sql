👤 SECTION 5: CUSTOMER DEMOGRAPHIC INSIGHTS

------------------------------------------------------------------------------------------------------------------------
--Transaction count by gender
SELECT
    gender,
    COUNT(*) AS transaction_count
FROM transactions_fact
GROUP BY gender;


--Average transaction value by gender
select gender,
round(avg(transaction_amount),2) as ATV
from transactions_fact
group by gender


--Job-wise transaction value
SELECT
    job,
    SUM(transaction_amount) AS revenue
FROM transactions_fact
GROUP BY job



--Top 5 professions by transaction amount
SELECT
    job,
    SUM(transaction_amount) AS revenue
FROM transactions_fact
GROUP BY job
ORDER BY revenue DESC
LIMIT 5;

👉 Purpose: Segmentation & profiling.
