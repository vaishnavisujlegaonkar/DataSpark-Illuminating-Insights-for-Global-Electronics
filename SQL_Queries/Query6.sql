-- SALES BY PRODUCT CATEGORY --
USE data_spark;
SELECT md.Category, 
       SUM(md.Quantity * md.Unit_Price_USD) AS Total_Sales
FROM merged_dataset md
GROUP BY md.Category
ORDER BY Total_Sales DESC;
