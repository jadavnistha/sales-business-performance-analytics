select * from sales;


-- 1.Rank customers by sales. 
select customername , 
rank() over(order by sales desc) as "Rank" from sales;


-- 2.Dense Rank products by profit. 
select productname , dense_rank() over(order by profit) from sales;


-- Row Number by category. 
select category , row_number() over(partition by category) from sales;


-- 4.Running total of sales. 
select orderdate , sales ,
sum(sales) over(order by orderdate) as running_total from sales
order by orderdate;


-- 5.Running total of profit. 
select productname , profit ,
sum(profit) over(order by productname) as running_total from sales
order by productname;



-- 6.Previous order sales using LAG(). 
select orderdate , sales, LAG(sales) over(partition by orderdate) as previous 
from sales


-- 7.Next order sales using LEAD(). 
select orderdate , sales, LEAD(sales) over(partition by orderdate) as Next 
from sales


-- 8.Month-over-month sales change. 
select to_char(orderdate,'month') as monthname, sales , LAG(sales) over(order by sales) as sales_change from sales;


-- 9.Top 3 customers in each region. 
with customer_sales as (
	select region , customername,sum(sales) as sales,
	row_number() over(partition by region) as rn from sales
group by region , customername
	)

select *  from customer_sales where rn <= 3;


-- Top 5 products in each category using ROW_NUMBER()
with product_sales as (
	select category , productname, sum(sales) as sales,
	row_number() over(partition by category) as rn from sales
group by category , productname
-- 	order by sales desc
	)

select * from product_sales where rn <=5;



