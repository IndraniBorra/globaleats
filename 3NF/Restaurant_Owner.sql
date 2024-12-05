CREATE TABLE Restaurant_Owner (
  User_Id int NOT NULL,
  Restaurant_Id int DEFAULT NULL,
  Signup_Date date DEFAULT NULL,
  PRIMARY KEY (User_Id),
  KEY Restaurant_Owner_Restaurant_FK (Restaurant_Id),
  CONSTRAINT Restaurant_Owner_Restaurant_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id)
)
