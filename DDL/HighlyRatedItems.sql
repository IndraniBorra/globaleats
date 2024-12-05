CREATE VIEW HighlyRatedItems AS
SELECT 
    Item_Id,
    AVG(Rating) AS Average_Rating
FROM 
    Reviews
GROUP BY 
    Item_Id
HAVING 
    AVG(Rating) >= 4.5;