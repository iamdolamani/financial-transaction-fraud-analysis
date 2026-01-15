📊 SECTION 8: KPI SUMMARY (DASHBOARD READY)

---------------------------------------------------------------------------------------------------
--Total transactions
select count(*) as total_transaction from transactions_fact

--Total revenue
select round(sum(transaction_amount),2) as total_revenue from transactions_fact

--Average transaction value
select round(avg(transaction_amount),2) as avg_transaction_value from transactions_fact

--Fraud rate (%)
select 


--Top merchant
select m.merchant_id,m.merchant_name,round(sum(tf.transaction_amount),2) total_revenue from merchants m
join transactions_fact tf
on m.merchant_name=tf.merchant_name
group by m.merchant_id,m.merchant_name
order by total_revenue desc
limit 1

--Top city
select city,sum(transaction_amount) as total_revenue
from transactions_fact
group by city
order by city desc
limit 1

--Top category
select category,sum(transaction_amount) as total_revenue
from transactions_fact
group by category
order by category desc
limit 1
