CREATE TABLE Users (
  User_Id int NOT NULL AUTO_INCREMENT,
  First_Name varchar(100) NOT NULL,
  Middle_Name varchar(100) NOT NULL,
  Last_Name varchar(100) NOT NULL,
  DOB date NOT NULL,
  Gender binary(1) NOT NULL,
  User_Address_Id int NOT NULL,
  PRIMARY KEY (User_Id)
);
ALTER TABLE Users ADD CONSTRAINT Users_Address_FK FOREIGN KEY (User_Address_Id) REFERENCES Address (Address_Id);