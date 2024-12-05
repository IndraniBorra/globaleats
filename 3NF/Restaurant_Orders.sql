CREATE TABLE Restaurant_Orders (
  Restaurant_Id int NOT NULL,
  Order_Id int NOT NULL,
  PRIMARY KEY (Restaurant_Id,Order_Id),
  KEY Receives_Orders_FK (Order_Id),
  CONSTRAINT Receives_Orders_FK FOREIGN KEY (Order_Id) REFERENCES Orders (Order_Id),
  CONSTRAINT Receives_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id)
)