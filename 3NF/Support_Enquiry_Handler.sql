CREATE TABLE Support_Enquiry_Handler (
  Enquiry_Id int NOT NULL,
  Employee_Id int NOT NULL,
  PRIMARY KEY (Enquiry_Id,Employee_Id),
  KEY Handles_Employee_FK (Employee_Id),
  CONSTRAINT Handles_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id),
  CONSTRAINT Handles_Support_Enquiry_FK FOREIGN KEY (Enquiry_Id) REFERENCES Support_Enquiry (Enquiry_Id)
)