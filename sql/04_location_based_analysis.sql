🌍 SECTION 4: LOCATION-BASED ANALYSIS


-------------------------------------------------------------------------------
--City-wise total transaction value
select city,
round(sum(transaction_amount),2) as revenue
from transactions_fact
group by city
order by revenue


--Top 5 cities by transaction value
select city,
round(sum(transaction_amount),2) as revenue
from transactions_fact
group by city
order by revenue desc
limit 5


--Average transaction value per city
select city,
round(avg(transaction_amount),2) as avg_revenue
from transactions_fact
group by city
order by avg_revenue desc
limit 5

--City population vs transaction value correlation (conceptual)
SELECT
    city,
    MAX(city_pop) AS city_population,
    SUM(transaction_amount) AS total_revenue
FROM transactions_fact
GROUP BY city
ORDER BY city_population DESC;

👉 Purpose: Geo insights + aggregation skills.
