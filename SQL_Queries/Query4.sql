-- SALES TREND OVER TIME (MONTHLY)
USE data_spark;
SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS Month, 
       SUM(Quantity * Unit_Price_USD) AS Monthly_Sales
FROM merged_dataset
GROUP BY Month
ORDER BY Month;
