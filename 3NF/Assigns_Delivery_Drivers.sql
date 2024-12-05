CREATE TABLE Assigns_Delivery_Drivers (
  Driver_Id int NOT NULL,
  Order_Id int NOT NULL,
  Employee_Id int NOT NULL,
  PRIMARY KEY (Driver_Id,Order_Id),
  KEY Assigns_Orders_FK (Order_Id),
  KEY Assigns_Employee_FK (Employee_Id),
  CONSTRAINT Assigns_Delivery_Drivers_Deliveries_FK FOREIGN KEY (Driver_Id) REFERENCES Delivery_Drivers (Driver_Id),
  CONSTRAINT Assigns_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
  CONSTRAINT Assigns_Orders_FK FOREIGN KEY (Order_Id) REFERENCES Orders (Order_Id)
)