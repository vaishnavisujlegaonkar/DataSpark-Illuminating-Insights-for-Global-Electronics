-- TOTAL SSLES REVENUE --
USE data_spark;
SELECT SUM(Quantity * Unit_Price_USD) AS Total_Revenue FROM merged_dataset;
