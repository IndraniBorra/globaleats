-- create address table with the following columns and constraints
CREATE TABLE Address (
  Address_Id INT NOT NULL AUTO_INCREMENT,
  Street VARCHAR(255) NOT NULL,
  City VARCHAR(255) NOT NULL,
  State VARCHAR(255) NOT NULL,
  Zip_Code VARCHAR(255) NOT NULL,
  PRIMARY KEY (Address_Id)
);
 
