
-- write the query to List details of restaurant owners who have signed up within the past three months.
SELECT u.User_Id, u.First_Name, u.Last_Name, ro.Restaurant_Name, ro.Sign_Up_Date
FROM Users u
JOIN Restaurant_Owners ro ON u.User_Id = ro.User_Id
WHERE ro.Sign_Up_Date >= DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH);

-- Find the names of customers who placed orders with only two restaurants in the past month.

SELECT u.User_Name
FROM Orders o
JOIN Users u ON o.User_Id = u.User_Id
WHERE o.Order_Date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY o.User_Id
HAVING COUNT(DISTINCT o.Restaurant_Id) = 2;
-- Calculate the average number of orders placed by the top five customers in the platform.
SELECT 
        AVG(Total_Orders) AS Average_Orders
    FROM 
        TopFiveCustomers;
-- List the name of each restaurant and its most popular menu item
SELECT r.Restaurant_Name, mi.Item_Name
FROM Restaurants r
JOIN Menu_Items mi ON r.Restaurant_Id = mi.Restaurant_Id
JOIN (
  SELECT Item_Id, MAX(Item_Sales) as Max_Sales
  FROM Menu_Items
  GROUP BY Item_Id
) as subquery ON mi.Item_Id = subquery.Item_Id;
-- Identify menu items that haven’t been ordered in the last six months

SELECT mi.Item_Id, mi.Item_Name
FROM Menu_Items mi
LEFT JOIN Order_Items oi ON mi.Item_Id = oi.Item_Id
LEFT JOIN Orders o ON oi.Order_Id = o.Order_Id
WHERE o.Order_Date IS NULL OR o.Order_Date < DATEADD(month, -6, GETDATE());

-- Find customers who have reviewed all the items from a specific restaurant
SELECT User_Id
FROM Reviews r1
WHERE Restaurant_Id = @RestaurantId
GROUP BY User_Id
HAVING COUNT(DISTINCT Item_Id) = (
    SELECT COUNT(DISTINCT Item_Id)
    FROM Reviews r2
    WHERE r2.Restaurant_Id = @RestaurantId
);


-- Identify the restaurant with the most promotions’ amount in the past year.

SELECT Restaurant_Id, SUM(Promo_Amount) AS Total_Promo_Amount
FROM Orders
WHERE Order_Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY Restaurant_Id
ORDER BY Total_Promo_Amount DESC
LIMIT 1;


-- Find the year with the highest total order payments.
SELECT YEAR(Order_Date) AS Order_Year, SUM(Order_Total) AS Total_Payments
FROM Orders
GROUP BY Order_Year
ORDER BY Total_Payments DESC
LIMIT 1;


-- List the names of customers who ordered the most popular menu items.
SELECT Menu_Item_Id, COUNT(*) AS Order_Count
FROM Order_Items
GROUP BY Menu_Item_Id
ORDER BY Order_Count DESC
LIMIT 1;



--Find delivery drivers who have delivered at least 10 orders in the past month.
SELECT dd.Driver_Id, COUNT(o.Order_Id) AS Total_Orders
FROM Delivery_Drivers dd
JOIN Orders o ON dd.Driver_Id = o.Driver_Id
WHERE o.Order_Date >= DATEADD(month, -1, GETDATE())
GROUP BY dd.Driver_Id
HAVING COUNT(o.Order_Id) >= 10;

--List customers who have been active for more than two years.
SELECT c.User_Id, u.Name, u.Email
FROM Customers c
JOIN Users u ON c.User_Id = u.User_Id
WHERE u.Account_Creation_Date <= DATEADD(year, -2, GETDATE());

--Find the number of orders delivered by the top three delivery drivers.
SELECT Driver_Id, COUNT(Order_Id) AS NumberOfOrders
FROM Orders
GROUP BY Driver_Id
ORDER BY NumberOfOrders DESC
LIMIT 3;
-- List the restaurant owner who manages the most restaurants.
 SELECT User_Id
  FROM Restaurant_Owner
  GROUP BY User_Id
  ORDER BY COUNT(Restaurant_Id) DESC
  LIMIT 1;
-- Identify restaurants that have run promotions in every quarter of the past year.

SELECT Restaurant_Id
FROM Promotions
WHERE YEAR(Promo_Expiry_date) = YEAR(CURDATE()) - 1
GROUP BY Restaurant_Id
HAVING COUNT(DISTINCT QUARTER(Promo_Expiry_date)) = 4;

-- List all employees who are also restaurant owners, and display their employee details along with the details of the restaurant they own.
SELECT 
  e.Employee_Id,
  e.Employee_Name,
  e.Employee_Age,
  e.Employee_Department,
  e.Employee_Start_Date,
  e.Salary,
  r.Restaurant_Name,
  r.Restaurant_Location
FROM 
  Employee e
JOIN 
  Restaurants r ON e.Restaurant_Id = r.Restaurant_Id
JOIN 
  Owners o ON r.Restaurant_Id = o.Restaurant_Id
WHERE 
  e.User_Id = o.User_Id;

-- List the names and contact information of all employees who were hired before a specific date but have not received any new training since that date.
SELECT e.Employee_Name, u.Contact_Info
FROM Employee e
JOIN Users u ON e.User_Id = u.User_Id
LEFT JOIN Training t ON e.Employee_Id = t.Employee_Id
WHERE e.Employee_Start_Date < '2023-01-01'
  AND (t.Training_Date IS NULL OR t.Training_Date < e.Employee_Start_Date);
