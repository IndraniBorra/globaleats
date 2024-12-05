CREATE TABLE Operational_hours (
  Restaurant_Id int NOT NULL,
  Week_Day varchar(100) NOT NULL,
  Open_time time NOT NULL,
  Close_time time NOT NULL,
  PRIMARY KEY (Restaurant_Id, Week_Day),
  CONSTRAINT Operational_hours_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id)
)