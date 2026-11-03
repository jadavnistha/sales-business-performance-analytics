select * from sales;

-- 1.Total sales by category. 
select category , sum(sales) as Total_sales_by_category from sales
group by category;

-- 2.Total profit by category. 
select category , sum(profit) as Total_profit_by_category from sales
group by category;

-- 3.Average sales by category. 
select category , avg(sales) as Average_sales_by_category from sales
group by category;

-- 4.Number of orders by payment mode. 
select paymentmode , count(orderid) as Number_of_orders_by_payment_mode from sales
group by paymentmode;

-- 5.Total sales by state. 
select state, sum(sales) from sales
group by state;

-- 6.Total sales by city. 
select city, sum(sales) from sales
group by city;

-- 7.Total profit by region. 
select region, sum(profit) from sales
group by region;

-- Average delivery days by shipping mode. 
select shippingmode , avg(deliverydays) from sales
group by shippingmode;

-- 9.Average discount by category. 
select category , avg(discountpercent) Average_discount_by_category from sales
group by category;


-- Number of customers in each segment.
select segment , count(customerid) from sales
group by segment;

