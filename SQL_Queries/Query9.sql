-- CUSTOMERS WITH MOST PURCHASES --
USE data_spark;
SELECT md.Name, 
       COUNT(*) AS Total_Purchases, 
       SUM(md.Quantity * md.Unit_Price_USD) AS Total_Spent
FROM merged_dataset md
GROUP BY md.Name
ORDER BY Total_Purchases DESC
LIMIT 5;
