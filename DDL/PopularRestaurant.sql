-- PopularRestaurants: View of the most ordered-from restaurants in the past year.

CREATE VIEW PopularRestaurants AS
SELECT 
    Restaurant_Id,
    COUNT(Order_Id) AS Order_Count
FROM 
    Orders
WHERE 
    Order_Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY 
    Restaurant_Id
ORDER BY 
    Order_Count DESC;