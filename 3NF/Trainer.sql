CREATE TABLE Trainer (  
    Employee_Id INT NOT NULL,
    Certificate_Id INT NOT NULL,
    PRIMARY KEY (Employee_Id),
    CONSTRAINT Trainer_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
);

