CREATE TABLE Support_Agent (
  Employee_Id INT NOT NULL,
  Trainer_Id INT NOT NULL,
  PRIMARY KEY (Employee_Id),
  CONSTRAINT Support_Agent_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
  CONSTRAINT Support_Agent_Trainer_FK FOREIGN KEY (Trainer_Id) REFERENCES Trainer (Employee_Id)
);
