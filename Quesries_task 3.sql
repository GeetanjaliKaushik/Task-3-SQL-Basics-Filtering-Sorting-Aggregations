use global_superstore;
SELECT * FROM global_superstoredata;
# 1) View First Few Records
SELECT * FROM global_superstoredata
LIMIT 10;

# 2)Check Total Record Count
SELECT COUNT(*) AS total_records from global_superstoredata;

# 3)Check Unique Categories
SELECT DISTINCT Category from global_superstoredata;

# 4) Check Date Range
SELECT MIN(Order_Date) as Start_Date,
       MAX(Order_Date) as End_Date
FROM global_superstoredata;       

# 5)Technology Category Sales
SELECT * FROM global_superstoredata WHERE Category = 'Technology';

# 6) Top 10 Highest Sales Orders
SELECT Order_ID, Product_Name, Sales from global_superstoredata
ORDER BY Sales DESC LIMIT 10;

# 7)Top 5 Most Profitable Products
SELECT Product_Name, Profit FROM global_superstoredata
ORDER BY Profit DESC
LIMIT 5;

# 8) Total Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM global_superstoredata
GROUP BY Category
ORDER BY Total_Sales DESC;

# 9) Average Profit by Region
SELECT Region, AVG(Profit) AS Avg_Profit
FROM global_superstoredata
GROUP BY Region;

# 10) Total Orders by Region
SELECT Region, COUNT(*) AS Total_Orders
FROM global_superstoredata
GROUP BY Region;

# 11) Categories with Sales > 100000
SELECT Category, SUM(Sales) AS Total_Sales
FROM global_superstoredata
GROUP BY Category
HAVING SUM(Sales) > 100000;

# 12) Monthly Sales Report
SELECT * FROM global_superstoredata
WHERE Order_Date BETWEEN '2019-01-01' AND '2019-01-31';

# 13) Customer Name Pattern Search
SELECT * FROM global_superstoredata
WHERE Customer_Name LIKE 'A%';

# 14) Export Query Result to CSV (MySQL Workbench)
SELECT Category, SUM(Sales) AS Total_Sales
FROM global_superstoredata
GROUP BY Category
INTO OUTFILE 'C:/ELEVATE LAB_INTERNSHIP/TASK_3 dated on 19.01.2026/category_sales.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


