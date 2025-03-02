-- TOP 5 MOST PROFITABLE PRODUCTS --
USE data_spark;
SELECT p.Product_Name, 
       SUM(s.Quantity * (p.Unit_Price_USD - p.Unit_Cost_USD)) AS Total_Profit
FROM Sales s
JOIN Products p ON s.ProductKey = p.ProductKey
GROUP BY p.Product_Name
ORDER BY Total_Profit DESC
LIMIT 5;
