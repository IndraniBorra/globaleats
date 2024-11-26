CREATE TABLE `Restaurants` (
  `Restaurant_Id` int NOT NULL AUTO_INCREMENT,
  `Rest_Name` varchar(100) NOT NULL,
  `Cuisine_Type` varchar(100) NOT NULL,
  `Location` varchar(1000) NOT NULL,
  `Op-Hours` datetime NOT NULL,
  PRIMARY KEY (`Restaurant_Id`)
)