CREATE TABLE Users (
  User_Id int NOT NULL AUTO_INCREMENT,
  First_Name varchar(100) NOT NULL,
  Middle_Name varchar(100) NOT NULL,
  Last_Name varchar(100) NOT NULL,
  DOB date NOT NULL,
  Gender binary(1) NOT NULL,
  User_Address_Id int NOT NULL,
  Created_At datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (User_Id),
  FOREIGN KEY (User_Address_Id) REFERENCES User_Addresses(User_Address_Id)
);




