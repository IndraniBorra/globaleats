CREATE TABLE Favorites (
  User_Id INT NOT NULL,
  Restaurant_Id INT NOT NULL,
  PRIMARY KEY (User_Id, Restaurant_Id),
  KEY Favorites_Restaurants_FK (Restaurant_Id),
  CONSTRAINT Favorites_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id),
  CONSTRAINT Favorites_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
);
-- Change Column Restaurant_Id to Item_Id in Favorites table and its refernces and constraints too
ALTER TABLE Favorites CHANGE COLUMN Restaurant_Id Item_Id INT;
ALTER TABLE Favorites ADD CONSTRAINT Favorites_Menu_Items_FK FOREIGN KEY (Item_Id) REFERENCES Menu_Items (Item_Id);
