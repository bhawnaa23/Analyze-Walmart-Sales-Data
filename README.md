**Walmart Sales Data Analysis**

**Project Overview**
This project focuses on analyzing Walmart's sales data to derive valuable insights and support business decision-making processes. By examining various aspects of the sales data, such as customer demographics, product preferences, and sales trends, the analysis aims to provide actionable recommendations for optimizing operations and enhancing customer satisfaction.

**Dataset Overview**
The dataset used in this project comprises 1000 records and 17 columns, capturing detailed sales transactions from three Walmart branches located in Mandalay, Yangon, and Naypyitaw. Below is a brief description of each column:

Invoice_ID: Unique identifier for each invoice.
Branch: Branch of the store where the sale took place.
City: City where the store branch is located.
Customer_type: Type of customer (e.g., Member, Normal).
Gender: Gender of the customer.
Product_line: Category of the product sold.
Unit_price: Price per unit of the product.
Quantity: Quantity of the product sold.
Tax_5%: Tax applied on the sale.
Total: Total amount of the sale.
Date: Date of the transaction.
Time: Time of the transaction.
Payment: Payment method used (e.g., Cash, Credit Card).
cogs: Cost of goods sold.
gross_margin_percentage: Gross margin percentage.
gross_income: Gross income from the sale.
Rating: Customer rating for the purchase.

**Objectives**
The primary objectives of this project are:
To uncover key sales patterns and trends across branches and product lines.
To analyze customer purchasing behavior and preferences.
To identify high-performing branches and products.
To provide insights that can guide strategic decisions aimed at improving profitability and customer satisfaction.

Approach
Data Wrangling:
Ensured data quality by checking for null values and handling missing or inconsistent data.
Built the database and table structure to store the dataset.

Feature Engineering:
Created new columns, such as time_of_day, day_name, and month_name, to derive additional insights into sales trends by time, day, and month.

Exploratory Data Analysis (EDA):
Conducted thorough analyses to address business questions and objectives, leveraging descriptive statistics and SQL queries.

Insights Generation:
Generated actionable insights from the analysis, focusing on improving sales strategies, optimizing product offerings, and enhancing customer engagement.

Table Structure
The following table schema was used to store the data:
CREATE DATABASE WalmartDB;
USE WalmartDB;

CREATE TABLE WalmartData (
    Invoice_ID VARCHAR(20),
    Branch CHAR(1),
    City VARCHAR(50),
    Customer_type VARCHAR(10),
    Gender VARCHAR(10),
    Product_line VARCHAR(50),
    Unit_price DECIMAL(10,2),
    Quantity INT,
    Tax_5 DECIMAL(10,2),
    Total DECIMAL(10,2),
    Date DATE,
    Time TIME,
    Payment VARCHAR(20),
    Cogs DECIMAL(10,2),
    Gross_margin_percentage DECIMAL(10,6),
    Gross_income DECIMAL(10,2),
    Rating DECIMAL(3,1)
);

