-- TOP 5 BEST SELLING PRODUCTS --
USE data_spark;
SELECT Product_Name, SUM(Quantity) AS Total_Units_Sold
FROM merged_dataset
GROUP BY Product_Name
ORDER BY Total_Units_Sold DESC
LIMIT 5;
