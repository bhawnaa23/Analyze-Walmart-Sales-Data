# Retrieve all columns for sales made in a specific branch (e.g., Branch 'A').
SELECT * FROM walmartdata;
select * from walmartdata where branch="a";

# Find the total sales for each product line.
select Product_line,sum(total) as total_sales from walmartdata group by Product_line;

# List all sales transactions where the payment method was 'Cash'.
Select total,payment from walmartdata where payment="cash";

# Calculate the total gross income generated in each city.
Select sum(gross_income) as tot_gross_income,city from walmartdata group by city;

# Find the average rating given by customers in each branch. 
Select avg(rating) as average_rating,branch from walmartdata group by branch;
# Determine the total quantity of each product line sold.
Select sum(quantity) as Total_Quantity,Product_line from walmartdata group by Product_line;

# List the top 5 products by unit price.
Select Product_line,Unit_price from walmartdata 
order by Unit_price desc
limit 5;

# Find sales transactions with a gross margin percentage greater than 30%.
Select gross_margin_percentage,total from walmartdata where gross_margin_percentage>(30/100)*Total;
# Retrieve sales transactions that occurred on weekends.
SELECT total, 
       date AS weekday, 
       DAYOFWEEK(STR_TO_DATE(date, '%Y-%m-%d')) AS dayofweek
FROM walmartdata
WHERE DAYOFWEEK(STR_TO_DATE(date, '%Y-%m-%d')) = 1 OR DAYOFWEEK(STR_TO_DATE(date, '%Y-%m-%d')) = 7;

# Calculate the total sales and gross income for each month. 
Select sum(total) as totalsales,sum(gross_income) as grossincome,
dayofmonth(str_to_date(date,"%Y-%m-%d")) as Months from walmartdata
group by dayofmonth(str_to_date(date,"%Y-%m-%d")),total,gross_income;

#Find the number of sales transactions that occurred after 6 PM.
Select count(total) as number_of_sales from walmartdata where time>="18:00:00";

#List the sales transactions that have a higher total than the average total of all transactions.
Select total from walmartdata where total>
	(select avg(total) from walmartdata);

# Find customers who made more than 5 purchases in a single month.    
Select customer_type,count(*) from walmartdata
group by year(date), month(date) ,customer_type
having count(*)>5;

# Calculate the cumulative gross income for each branch by date.
SELECT Branch, 
       Date, 
       SUM(Gross_income) OVER (PARTITION BY Branch ORDER BY Date) AS Cumulative_Gross_Income
FROM walmartdata;

# Find the total cogs for each customer type in each city.
Select sum(cogs),city from walmartdata  group by city;