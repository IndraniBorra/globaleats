CREATE TABLE Order_Payments (
    Order_Payment_Id int NOT NULL,
    User_Id varchar(100) NOT NULL,
    Order_Id int NOT NULL,
    Rest_Id varchar(100) NOT NULL,
    Payment_Time time NOT NULL,
    Payment_Date date NOT NULL,
    Payment_Amount float NOT NULL,
    PRIMARY KEY (Order_Payment_Id),
    KEY Payments_Users_FK (User_Id),
    CONSTRAINT Payments_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id),
    CONSTRAINT Payments_Orders_FK FOREIGN KEY (Order_Id) REFERENCES Orders (Order_Id),
    CONSTRAINT Payments_Restaurants_FK FOREIGN KEY (Rest_Id) REFERENCES Restaurants (Rest_Id)
);