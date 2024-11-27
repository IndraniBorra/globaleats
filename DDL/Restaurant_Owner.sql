CREATE TABLE Restaurant_Owner (
  User_Id varchar(100) DEFAULT NULL 
  CONSTRAINT Restaurant_Owner_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
) 