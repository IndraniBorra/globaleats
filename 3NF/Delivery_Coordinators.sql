CREATE TABLE Delivery_Coordinators (   
    Employee_Id INT NOT NULL,
    Trainer_Certificate_Id INT NOT NULL,
    PRIMARY KEY (Employee_Id),
    CONSTRAINT Delivery_Coordinators_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
    CONSTRAINT Delivery_Coordinators_Trainer_FK FOREIGN KEY (Trainer_Certificate_Id) REFERENCES Trainer (Employee_Id)
    );