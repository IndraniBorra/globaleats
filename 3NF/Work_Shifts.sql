CREATE TABLE Work_Shifts ( 
    Employee_Id INT NOT NULL,
    Start_Time TIME NOT NULL,
    End_Time TIME NOT NULL,
    Date_Of_Shift DATE NOT NULL,
    PRIMARY KEY (Employee_Id, Date_Of_Shift),
    CONSTRAINT Work_Shifts_Employee_FK FOREIGN KEY (Employee_Id) REFERENCES Employee (Employee_Id)
    );