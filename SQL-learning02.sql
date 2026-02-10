create table retail_sales(
	transactions_id INT PRIMARY KEY,
	sale_date DATE,
	sale_time TIME,
	customer_id INT,
	gender VARCHAR(10),
	age INT,
	category VARCHAR(25),
	quantiy INT,
	price_per_unit FLOAT,
	cogs FLOAT,
	total_sale FLOAT
)
SELECT * FROM retail_sales;

--check the NULL data 

select * from retail_sales
where 
	transactions_id is NULL
	OR
	sale_time is NULL
	OR
	gender is NULL
	OR 
	category is NULL
	OR 
	quantiy is NULL
	OR 
	cogs is NULL
	OR 
	Total_sale is NULL;

--delete NULL records
DELETE FROM retail_sales
where 
	transactions_id is NULL
	OR
	sale_time is NULL
	OR
	gender is NULL
	OR 
	category is NULL
	OR 
	quantiy is NULL
	OR 
	cogs is NULL
	OR 
	Total_sale is NULL;

--Data Exploration
SELECT * FROM retail_sales;
--Q1 how many sales do we have??
select count(total_sale) from retail_sales ;

--Q2 how many unique customers do we havw??
select count(distinct customer_id)from retail_sales;

--Q3 how many category do we have??
select count(distinct category) from retail_sales;

--Business key problems 
SELECT * FROM retail_sales;

--Q1 WRITE SQL QUERY TO RETRIVE ALL THE SALES MAD EON DATE "2022-11-05'
SELECT * from retail_sales
WHERE sale_date='2022-11-05' ;

--Q2 WRITE SQL QUERY TO RETRIVE ALL TRANSACTION WHERE CATEGORY IS 'CLOTHING'AND THE QUENTITY SOLD WAS MORE THEN 10 IN THE MONTH OF NOVEMBER 
SELECT
*
FROM retail_Sales
where category = 'Clothing'  AND sale_date between '2022-11-01' and '2022-11-30';


--Q3 WRITE SQL QUERY TO CALCULATE THE TOTAL SALES FOR EACH CATEGORY

select category,sum(total_sale) from retail_sales
group by category;


--Q4 WRITE SQL QUERY TO FIND THE AVERAGE AGE GROUP OF CUSTOMER PURCHASED ITEMS FROM THE BEAUTY CATEGOTY

SELECT AVG(age) FROM retail_sales
where category = 'Beauty';


--Q5 WRITE ALL THE TRANSACTION WHERE THE TOPTAL SALES IS MORE THEN 1000

SELECT * from retail_sales
where total_sale >= 1000;

--Q6 WRITE TOTAL NUMBER OF TRANSACTION MADE BY EACH GENDER EACH CATEGORY 

SELECT  category , gender,count(total_sale) FROM retail_sales
group by 1,2;

--Q7 WRITE SQL QUERY TO CALCULATE THE AVERAGE SALE FOR EACH MONTHAND FIND OUT  MOST SELLING MONTH OF THE YEAR
select* from(
SELECT 
	extract (year from sale_date) as year,
	extract (month from sale_date) as month,
	AVG(total_sale) as average_sale,
	RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date)ORDER BY AVG(total_sale)DESC) as rank
from retail_sales
group by 1,2
)as t1
where rank =1


--Q8 WRITE SQL QUERY TO FIND THE TOP 5 CUSTOMERS BASED ON THE HIGHEST TOTAL SALES

SELECT customer_id , sum(total_sale)as total_sales
from retail_sales
group by 1
order by 2 desc
limit 5;

--Q9 WRITE SQL QUERY TO FIND OUT THE NUMBER OF UNIQUE CUSTOMERS WHO PURCHASED FROM EACH CATEGORY

SELECT 
	category,
	count(distinct customer_id) as unique_customers 
	from retail_sales
	group by 1;

--Q10 WRITE SQL QUERY TO CREATE EACH SHIFT AND NUMBER OF ORDER (EXAMPLE MORNING<=12, AFTERNOON BETWEEN 12 AND 17, EVENING >17)
With hourly_sale
as(
SELECT * , 
	case 
		when extract (hour from sale_time) < 12 then 'Morning' 
		when extract (hour from sale_time) between 12 and 17 then 'Afternoon'
	else
		'Evnevening'
	END AS SHIFT
from retail_sales
)
select 
	shift,
	count(*) as total_orders
from hourly_sale
group by shift


--Q11 Write an SQL query to find each customer’s total sales along with their rank based on total sales.

select
	customer_id,
	total_sales,
	rank() over(order by total_sales desc) as sales_rank
	from(
		select 
		customer_id,
		sum(total_sale) as total_sales
		from retail_sales
		group by customer_id	
	)t;


--Q12 Write an SQL query to calculate the running total of sales by date.

SELECT
  sale_date,
  daily_sales,
  SUM(daily_sales) OVER (ORDER BY sale_date) AS running_total
FROM (
  SELECT
    sale_date,
    SUM(total_sale) AS daily_sales
  FROM retail_sales
  GROUP BY sale_date
) t
ORDER BY sale_date;


-- Q13. Write an SQL query to calculate the month-over-month percentage growth in total sales.

SELECT
  month,
  total_sales,
  LAG(total_sales) OVER (ORDER BY month) AS previous_month_sales,
  ROUND(
    (total_sales - LAG(total_sales) OVER (ORDER BY month))
    / LAG(total_sales) OVER (ORDER BY month) * 100,
    2
  ) AS mom_growth_percentage
FROM (
  SELECT
    DATE_TRUNC('month', sale_date) AS month,
    SUM(total_sale) AS total_sales
  FROM retail_sales
  GROUP BY DATE_TRUNC('month', sale_date)
) t
ORDER BY month;











































