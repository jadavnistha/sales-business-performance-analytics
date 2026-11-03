-- Show all orders where Sales > ₹50,000
SELECT *
FROM sales
WHERE sales > 50000;

-- 2. Find all Electronics sales
SELECT *
FROM sales
WHERE category = 'Electronics';

-- 3. Find orders paid using UPI
SELECT *
FROM sales
WHERE paymentmode = 'UPI';

-- 4. Find customers from Maharashtra
SELECT *
FROM sales
WHERE state = 'Maharashtra';

-- 5. Find orders with more than 20% profit margin
SELECT *
FROM sales
WHERE profitmarginpercent > 20;

-- 6. Find orders with discounts greater than 10%
SELECT *
FROM sales
WHERE discountpercent > 10;

-- 7. Find all Express shipping orders
SELECT *
FROM sales
WHERE shippingmode = 'Express';

-- 8.Find all Corporate segment customers.  
select * from sales
where segment = 'Corporate';

-- Find products sold in the North region.
select * from sales
where region = 'North';

-- 10.Find customers aged above 40. 
select * from sales
where age >40;


