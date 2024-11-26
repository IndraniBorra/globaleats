CREATE TABLE `Users_Ph_no` (
  `User_Id` int NOT NULL,
  `Ph_No` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  KEY `Users_Ph_no_Users_FK` (`User_Id`),
  CONSTRAINT `Users_Ph_no_Users_FK` FOREIGN KEY (`User_Id`) REFERENCES `Users` (`User_Id`)
)