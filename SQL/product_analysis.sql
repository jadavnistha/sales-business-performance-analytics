select * from sales;

-- 1.Best-selling product. 
select productname , sum(sales) as best_selling_product from sales
group by productname
order by best_selling_product desc limit 1;

-- 2.Least-selling product. 
select productname , sum(sales) as best_selling_product from sales
group by productname
order by best_selling_product  limit 1;


-- 3.Product with highest profit. 
select productname , max(profit) as higest_profit from sales
group by productname 
order by higest_profit desc limit 1;


-- 4.Category contribution to total sales. 
select category , sum(sales) as total_sales from sales
group by category
order by total_sales;


-- 5.Average quantity sold by product. 
select productname , avg(quantity) as avg_quantity from sales
group by productname
order by avg_quantity;


-- Products with the highest discount. 
select productname , max(discountpercent) as discount from sales 
group by productname 
order by discount desc limit 1;


-- 7.Products with the highest profit margin. 
select productname , max(profitmarginpercent) as profitmarginpercent from sales 
group by productname 
order by profitmarginpercent desc limit 1;


-- 8.Top 5 products in each category. 
select category , sum(sales) as total_sales , productname from sales
group by category , productname 
order by total_sales;


-- 9.Bottom 5 products in each category. 
select category , sum(sales) as total_sales , productname from sales
group by category , productname 
order by total_sales;


-- 10.Total quantity sold by product. 
select productname , sum(quantity) as total_quantity from sales 
group by productname;


