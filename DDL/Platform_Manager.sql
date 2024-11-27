CREATE TABLE Platform_Manager (
  Employee_Id INT NOT NULL,
  Operation_Type VARCHAR(255) NOT NULL,
  Trainer_Certificate_Id INT NOT NULL,
  PRIMARY KEY (Employee_Id),
  CONSTRAINT Platform_Manager_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
  CONSTRAINT Platform_Manager_Trainer_FK FOREIGN KEY (Trainer_Certificate_Id) REFERENCES Trainer (Trainer_Certificate_Id)
);