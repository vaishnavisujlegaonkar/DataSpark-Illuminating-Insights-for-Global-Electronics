-- NUMBER OF ACTIVE STORES BY YEAR OPENED --
USE data_spark;
SELECT YEAR(Open_Date) AS Year_Opened, COUNT(StoreKey) AS Total_Stores
FROM Stores
GROUP BY Year_Opened
ORDER BY Year_Opened;
