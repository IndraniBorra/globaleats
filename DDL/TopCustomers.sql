-- TopCustomers: View of customers who placed the most orders in the past month.
CREATE VIEW TopCustomers AS
SELECT 
    User_Id,
    COUNT(Order_Id) AS Total_Orders
FROM 
    Orders
WHERE 
    Order_Date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY 
    User_Id
ORDER BY 
    Total_Orders DESC;
    WITH TopFiveCustomers AS (
        SELECT 
            User_Id,
            COUNT(Order_Id) AS Total_Orders
        FROM 
            Orders
        WHERE 
            Order_Date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
        GROUP BY 
            User_Id
        ORDER BY 
            Total_Orders DESC
        LIMIT 5
    )
    