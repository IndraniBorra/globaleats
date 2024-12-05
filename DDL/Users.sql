CREATE TABLE Users (
  User_Id int NOT NULL AUTO_INCREMENT,
  First_Name varchar(100) NOT NULL,
  Middle_Name varchar(100) NOT NULL,
  Last_Name varchar(100) NOT NULL,
  DOB date NOT NULL,
  Gender binary(1) NOT NULL,
  User_Address_Id int NOT NULL,
  Created_At datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (User_Id)
);


-- Query to list details of restaurant owners who have signed up within the past three months
