CREATE TABLE `Promotions` (
  `Rest_Id` varchar(100) NOT NULL,
  `Promo_code` varchar(100) DEFAULT NULL,
  `Description` varchar(1000) NOT NULL,
  `Expiry_date` date NOT NULL,
  `Order_Id` int NOT NULL,
  `Min_Order_Amount` float DEFAULT NULL
   CONSTRAINT Promotions_Restaurants_FK FOREIGN KEY (Rest_Id) REFERENCES Restaurants (Rest_Id),
)