CREATE TABLE User_Addresses (
  User_Address_Id int NOT NULL AUTO_INCREMENT,
  Street varchar(255) NOT NULL,
  City varchar(100) NOT NULL,
  State varchar(100) NOT NULL,
  Zip_Code varchar(20) NOT NULL,
  Country varchar(100) NOT NULL,
  PRIMARY KEY (User_Address_Id)
);