CREATE TABLE Order_Payments (
    Order_Payment_Id int NOT NULL,
    User_Id int NOT NULL,
    Restaurant_Id int NOT NULL,
    Payment_Time time NOT NULL,
    Payment_Date date NOT NULL,
    Payment_Amount float NOT NULL,
    PRIMARY KEY (Order_Payment_Id),
    KEY Payments_Users_FK (User_Id),
    CONSTRAINT Payments_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id),
    CONSTRAINT Payments_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id)
);