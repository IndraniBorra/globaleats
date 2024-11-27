CREATE TABLE Assigns ( 
  Driver_Id INT NOT NULL,
  Order_Id INT NOT NULL,
  Employee_Id INT NOT NULL,
  PRIMARY KEY (Driver_Id, Order_Id),
  CONSTRAINT Assigns_Delivery_Drivers_Deliveries_FK FOREIGN KEY (Driver_Id) REFERENCES Delivery_Drivers (Driver_Id),
  CONSTRAINT Assigns_Orders_FK FOREIGN KEY (Order_Id) REFERENCES Orders (Order_Id),
  CONSTRAINT Assigns_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
);
-- Chnage the table name to Assigns_Delivery_Drivers
RENAME TABLE Assigns TO Assigns_Delivery_Drivers;