CREATE TABLE Handles ( 
  Enquiry_Id INT NOT NULL,
  Employee_Id INT NOT NULL,
  PRIMARY KEY (Enquiry_Id, Employee_Id),
  CONSTRAINT Handles_Support_Enquiry_FK FOREIGN KEY (Enquiry_Id) REFERENCES Support_Enquiry (Enquiry_Id),
  CONSTRAINT Handles_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
);
