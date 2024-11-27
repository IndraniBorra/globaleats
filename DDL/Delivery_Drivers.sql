CREATE TABLE Delivery_Drivers (
    Employee_Id INT NOT NULL,
    Driver_Id INT NOT NULL UNIQUE,
    Driver_Number INT NOT NULL,
    Contact_Number INT NOT NULL,
    Vehicle_Type VARCHAR(255) NOT NULL,
    PRIMARY KEY (Employee_Id, Driver_Id),
    CONSTRAINT Delivery_Drivers_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
);