CREATE TABLE Users (
  User_Id int NOT NULL AUTO_INCREMENT,
  First_Name varchar(100) NOT NULL,
  Middle_Name varchar(100) NOT NULL,
  Last_Name varchar(100) NOT NULL,
  DOB date NOT NULL,
  Gender binary(1) NOT NULL,
  Street_Address varchar(100) NOT NULL,
  City varchar(100) NOT NULL,
  State_Address varchar(100) NOT NULL,
  Pincode varchar(100) NOT NULL,
  PRIMARY KEY (User_Id)
);