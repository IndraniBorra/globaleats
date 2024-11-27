CREATE TABLE Employee (
  Employee_Id INT NOT NULL AUTO_INCREMENT,
  User_Id INT NOT NULL,
  Restaurant_Id INT NOT NULL,
  Employee_Name varchar(100) NOT NULL,
  Employee_Age INT NOT NULL,
  Employee_Department varchar(100) NOT NULL,
  Employee_Start_Date DATE NOT NULL,
  Salary decimal(10,2) NOT NULL,
  PRIMARY KEY (Employee_Id),
  CONSTRAINT Employee_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id),
  CONSTRAINT Employee_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
);