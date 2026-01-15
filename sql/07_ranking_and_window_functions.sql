🏆 SECTION 7: ADVANCED / WINDOW FUNCTION (MUST HAVE)

------------------------------------------------------------------------------------------
--Rank merchants by total transaction value
select merchant_name,revenue,
		rank()over (order by revenue desc)as rnk
		from
(select merchant_name,
sum(transaction_amount)as revenue 
from transactions_fact
group by merchant_name)t

--Top 3 merchants per category (using window functions)
select category,merchant_name,revenue,rnk
from (select
	category,merchant_name,sum(transaction_amount)as revenue,
	dense_rank () over 
		(partition by category 
			order by sum(transaction_amount)desc
				)as rnk
	    FROM transactions_fact
	group by category,merchant_name)t
	where rnk <=3
	order by category,rnk 


Running total of transaction value by date

Identify days where transaction value was above monthly average

👉 Purpose: Shows SQL maturity (RANK, DENSE_RANK, WINDOW).

