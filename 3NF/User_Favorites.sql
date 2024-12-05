CREATE TABLE User_Favorites (
  User_Id int NOT NULL,
  Item_Id int NOT NULL,
  PRIMARY KEY (User_Id,Item_Id),
  KEY Favorites_Restaurants_FK (Item_Id),
  CONSTRAINT Favorites_Menu_Items_FK FOREIGN KEY (Item_Id) REFERENCES Menu_Items (Item_Id),
  CONSTRAINT Favorites_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
)