show databases;
create database Supply_chain_db;
use Supply_chain_db;

select * from supply_chain_data;
SELECT
ROUND(SUM(Revenue_generated),2) AS total_revenue
FROM supply_chain_data;

SELECT product_type,
ROUND(SUM(revenue_generated),2) revenue
FROM supply_chain_data
GROUP BY product_type
ORDER BY revenue DESC;

select supplier_name,
round(sum(revenue_generated),2) revenue
from supply_chain_data
group by supplier_name
order by revenue desc
limit 5;

select shipping_carriers,
round(avg(shipping_costs),2) as avg_shipping_cost
from supply_chain_data
group by shipping_carriers;

select supplier_name,
round(avg(Defect_rates),2) defect_rates
from supply_chain_data
group by supplier_name
order by defect_rates desc;

select Product_type,
sum(Stock_levels) as total_stock
from supply_chain_data
group by Product_type;

select *
from supply_chain_data
where Shipping_times > 7;

select transportation_modes,
round(avg(costs),2) avg_cost
from supply_chain_data
group by transportation_modes;

