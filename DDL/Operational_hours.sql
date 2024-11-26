CREATE TABLE Operational_hours (
  Rest_Id varchar(100) NOT NULL,
  Week_Day varchar(100) NOT NULL,
  Open_time time NOT NULL,
  Close_time time NOT NULL,
  PRIMARY KEY (Rest_Id, Week_Day),
  CONSTRAINT Operational_hours_Restaurants_FK FOREIGN KEY (Rest_Id) REFERENCES Restaurants (Rest_Id)
) 