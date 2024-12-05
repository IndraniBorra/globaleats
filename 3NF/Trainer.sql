CREATE TABLE Trainer (  
    Employee_Id INT NOT NULL,
    Certificate_Id INT NOT NULL,
    PRIMARY KEY (Employee_Id),
    CONSTRAINT Trainer_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
);

CREATE TABLE Certificates (
    Certificate_Id INT NOT NULL AUTO_INCREMENT,
    Trainer_Certificate_Id INT NOT NULL,
    Certificate_Expiry_Date DATE NOT NULL,
    Certificate_Issue_Date DATE NOT NULL,
    PRIMARY KEY (Certificate_Id),
    CONSTRAINT Certificates_Trainer_Certificate_Unique UNIQUE (Trainer_Certificate_Id)
);