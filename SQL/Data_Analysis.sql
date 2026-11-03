select * from sales;


-- checking datatypes
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'sales';

-- converting orderdate datatypr text to date
ALTER TABLE sales
ALTER COLUMN orderdate TYPE DATE
USING orderdate::DATE;