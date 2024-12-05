CREATE TABLE Reviews (
    Review_Id int NOT NULL,
    Restaurant_Id int NOT NULL,
    User_Id int NOT NULL,
    Item_Id int NOT NULL,
    Rating int NOT NULL,
    Review_Text varchar(1000) NOT NULL,
    Date_of_Review datetime NOT NULL,
    PRIMARY KEY (Review_Id),
    KEY Reviews_Restaurants_FK (Restaurant_Id),
    KEY Reviews_Users_FK (User_Id),
    CONSTRAINT Reviews_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id),
    CONSTRAINT Reviews_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
)
