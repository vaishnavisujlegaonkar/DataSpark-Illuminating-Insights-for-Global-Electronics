-- SALES DISTRIBUTION BY STORE --
USE data_spark;
SELECT md.StoreKey, 
       SUM(md.Quantity * md.Unit_Price_USD) AS Total_Sales
FROM merged_dataset md
GROUP BY md.StoreKey
ORDER BY Total_Sales DESC;
