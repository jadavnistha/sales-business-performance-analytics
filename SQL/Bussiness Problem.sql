select * from sales;

-- 1.Which payment mode generates the highest sales? 
select paymentmode , sum(sales) as total_sales from sales
group by paymentmode 
order by total_sales  desc limit 1;


-- 2.Which payment mode generates the highest profit? 
select paymentmode , sum(profit) as total_profit from sales
group by paymentmode 
order by total_profit  desc limit 1;


-- Which shipping mode is the fastest? 
select shippingmode , deliverydays from sales
order by deliverydays 
limit 1;


-- 5.Does higher discount increase sales? 
select discountpercent , sum(sales) as total_sales from sales
group by discountpercent
order by total_sales desc;


-- 6.Which customer segment is most profitable? 
select segment , sum(profit) as total_profit from sales
group by segment 
order by total_profit desc;


-- 7.Which age group purchases the most? 
select age , count(productid) as product_count from sales
group by age 
order by product_count desc;



-- 8.Which state has the highest average order value? 
select state , round((sum(sales)/count(orderid))::numeric,2) as avg_order_value
from sales
group by state;



-- 9.Which category has the lowest profit margin? 
select category , sum(profit) as total_profit from sales 
group by category 
order by total_profit ;


-- 10.Which product should be discontinued based on low sales and profit? 
select productname , sum(sales) as sales from sales 
group by productname
order by sales;
