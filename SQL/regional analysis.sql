select * from sales;

-- 1.Highest sales region. 
select region , sum(sales) as highest_sales from sales
group by region
order by highest_sales desc limit 1;


-- 2.Highest profit region. 
select region , sum(profit) as highest_profit from sales
group by region
order by highest_profit desc limit 1;


-- 3.Sales by state. 
select state , sum(sales) as total_sales from sales
group by state 
order by total_sales desc;

-- 4.Profit by state. 
select state , sum(profit) as total_profit from sales
group by state 
order by total_profit desc;


-- 5.Average order value by state. 
select state , round((sum(sales)/count(orderid))::numeric,2) as avg_order_value from sales
group by state 
order by avg_order_value desc;


-- 6.Top city by sales. 
select city , sum(sales) as total_sales from sales
group by city 
order by total_sales desc limit 1 ;


-- 7.Bottom city by sales. 
select city , sum(sales) as total_sales from sales
group by city 
order by total_sales  limit 1 ;


-- 8.Region contribution percentage. 
select region , sum(sales) as total_sales , 
round(((sum(sales)/(select sum(sales) from sales))*100)::numeric,2) as region_contribution from sales
group by region 
order by total_sales desc;


-- 9.Compare North vs South. 
select region , sum(sales) as total_sales , 
round(((sum(sales)/(select sum(sales) from sales))*100)::numeric,2) as region_contribution from sales
group by region 
having region = 'North' or region = 'South'
order by total_sales desc;


-- 10.Compare East vs West. 
select region , sum(sales) as total_sales , 
round(((sum(sales)/(select sum(sales) from sales))*100)::numeric,2) as region_contribution from sales
group by region 
having region = 'East' or region = 'West'
order by total_sales desc;
