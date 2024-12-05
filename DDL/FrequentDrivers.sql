
CREATE VIEW FrequentDrivers AS 
SELECT 
    Driver_Id,
    COUNT(Order_Id) AS Total_Orders
FROM 
    Orders
WHERE 
    Order_Date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY 
    Driver_Id
ORDER BY 
    Total_Orders DESC;