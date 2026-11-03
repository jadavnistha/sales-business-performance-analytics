select * from sales;

-- 1.Top 10 highest sales orders. 
select * from sales 
order by sales desc limit 10;

-- 2.Bottom 10 sales orders. 
select * from sales 
order by sales  limit 10;

-- 3.Top 10 profitable orders. 
select * from sales 
order by profit desc limit 10;

-- 4.Top 10 customers by sales. 
select CustomerName , sales from sales 
order by sales desc limit 10;

-- 5.Top 10 products by profit. 
select ProductName , profit from sales 
order by profit desc limit 10;