CREATE TABLE Receives (
  Restaurant_Id INT NOT NULL,
  Order_Id INT NOT NULL,
  PRIMARY KEY (Restaurant_Id, Order_Id),
  CONSTRAINT Receives_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id),
  CONSTRAINT Receives_Orders_FK FOREIGN KEY (Order_Id) REFERENCES Orders (Order_Id)
);
-- change table name to Restaurant_Orders
RENAME TABLE Receives TO Restaurant_Orders;