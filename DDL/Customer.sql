CREATE TABLE Customers (
  User_Id INT NOT NULL,
  Driver_Id INT NOT NULL,
  CONSTRAINT Customers_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id),
  CONSTRAINT Customers_Delivery_Drivers_FK FOREIGN KEY (Driver_Id) REFERENCES Delivery_Drivers (Driver_Id)
);