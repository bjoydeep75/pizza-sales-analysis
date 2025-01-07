create database pizza; #create database#
use pizza; #use database#
select	* from pizza_sales;
select sum(total_price) as total_price from pizza_sales; 
select sum(total_price)/ count(distinct order_id) as avg_order_value from pizza_sales;
select  order_id,total_price from pizza_sales; ##avarage order##
select sum(quantity) as total_quantity from pizza_sales;#total quantity#
select count(distinctrow order_id) as total_orders from pizza_sales;
select sum(quantity)/count(distinct order_id) as avg_pizza_perorder from pizza_sales;
SELECT DAYNAME(order_date) AS order_day,
       COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY DAYNAME(order_date);
SELECT HOUR(order_time) AS order_hours, 
       COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY HOUR(order_time)
ORDER BY HOUR(order_time); ##hourly trend##
select * from pizza_sales;
select pizza_category ,count(distinct order_id),sum(total_price)as total_sale,
sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as percentage
from pizza_sales
group by pizza_category;##percentage by pizza catergory##
select pizza_size,sum(total_price)as total_sale,
sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as percentage
from pizza_sales
group by pizza_size
order by percentage desc; ##size##
select pizza_category ,count(quantity),sum(total_price) from pizza_sales
group by pizza_category;##category wise quantity##
select * from pizza_sales;
select pizza_name, sum(quantity) from pizza_sales
group by pizza_name
order by sum(quantity) desc
limit 5;##top5##
select pizza_name, sum(quantity) from pizza_sales
group by pizza_name
order by sum(quantity) asc
limit 5; ##bottum 5 ##
