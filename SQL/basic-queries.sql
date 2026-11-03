-- 1.Display all records from the sales table. 
select * from sales limit 3;

-- Display only the Customer Name, Product Name, and Sales. 
select CustomerName , ProductName , Sales from sales limit3;

-- Find the total number of orders. 
select count(orderid) as total_orders from sales;

-- 4.Find the total sales. 
select sum(sales) as total_sales from sales;

-- 5.Find the total profit. 
select sum(profit) as total_profit from sales;

-- 6.Find the average sales per order. 
select avg(sales) from sales; 

-- Find the average profit per order. 
select avg(profit) from sales; 

-- 8.Find the highest sales amount. 
select max(sales) as higest_sales from sales;

-- Find the lowest sales amount 
select min(sales) as lowest_sales from sales;

-- 10.Count the number of unique customers. 
select distinct count(customerid) from sales;
