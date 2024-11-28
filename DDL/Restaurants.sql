CREATE TABLE Restaurants (
  Restaurant_Id int NOT NULL AUTO_INCREMENT,
  Restaurant_Name varchar(100) NOT NULL,
  Cuisine_Type varchar(100) NOT NULL,
  Operational_Hours time NOT NULL,
  Restaurant_Address_Id int NOT NULL,
  PRIMARY KEY (Restaurant_Id),
  KEY Restaurants_Address_FK (Restaurant_Address_Id),
  CONSTRAINT Restaurants_Address_FK FOREIGN KEY (Restaurant_Address_Id) REFERENCES Address (Address_Id)
)