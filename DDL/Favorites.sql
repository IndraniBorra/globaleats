CREATE TABLE Favorites (
  User_Id INT NOT NULL,
  Restaurant_Id INT NOT NULL,
  PRIMARY KEY (User_Id, Restaurant_Id),
  KEY Favorites_Restaurants_FK (Restaurant_Id),
  CONSTRAINT Favorites_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id),
  CONSTRAINT Favorites_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
);

