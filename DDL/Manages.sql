CREATE TABLE Manages ( 
  Restaurant_Id INT NOT NULL,
  User_Id INT NOT NULL,
  PRIMARY KEY (Restaurant_Id, User_Id),
  CONSTRAINT Manages_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id),
  CONSTRAINT Manages_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
);

