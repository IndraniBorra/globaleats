CREATE TABLE Trainer (  
    Employee_Id INT NOT NULL,
    Trainer_Certificate_Id INT NOT NULL,
    Certificate_Expiry_Date DATE NOT NULL,
    Certificate_Issue_Date DATE NOT NULL,
    PRIMARY KEY (Employee_Id),
    CONSTRAINT Trainer_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
    ); 

ALTER TABLE Trainer ADD CONSTRAINT Trainer_Certificate_Unique UNIQUE (Trainer_Certificate_Id);