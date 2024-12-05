-- View of customers who have added at least 10 menu items to their Favorites list but have not yet registered as Restaurant Owners.

CREATE VIEW PotentialOwners AS
SELECT 
  u.User_Id, 
  COUNT(f.Item_Id) AS Favorite_Count
FROM 
  Users u
JOIN 
  User_Favorites f ON u.User_Id = f.User_Id
LEFT JOIN 
  Restaurant_Owner ro ON u.User_Id = ro.User_Id
WHERE 
  ro.User_Id IS NULL
GROUP BY 
  u.User_Id
HAVING 
  COUNT(f.Item_Id) >= 10;