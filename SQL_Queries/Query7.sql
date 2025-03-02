-- SALES IN DIFFERENT CURRENCIES --
USE data_spark;
SELECT md.Currency_Code, 
       SUM(md.Quantity * md.Unit_Price_USD * md.Exchange) AS Adjusted_Sales
FROM merged_dataset md
GROUP BY md.Currency_Code
ORDER BY Adjusted_Sales DESC;
