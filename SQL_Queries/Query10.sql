-- TOP 5 COUNTRIES WITH HIGHEST SALES --
USE data_spark;
SELECT md.Country, 
       SUM(md.Quantity * md.Unit_Price_USD) AS Total_Sales
FROM merged_dataset md
GROUP BY md.Country
ORDER BY Total_Sales DESC
LIMIT 5;
