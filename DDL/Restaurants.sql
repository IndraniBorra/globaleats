CREATE TABLE Restaurants (
  Restaurant_Id INT NOT NULL AUTO_INCREMENT,
  Rest_Name varchar(100) NOT NULL,
  Cuisine_Type varchar(100) NOT NULL,
  Restaurant_Address varchar(1000) NOT NULL,
  Operational_Hours TIME NOT NULL,
  PRIMARY KEY (Restaurant_Id)
);

