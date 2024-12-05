CREATE TABLE Payment_Method(
    Payment_Id int NOT NULL,
    User_Id int NOT NULL,
    Payment_Method varchar(100) NOT NULL,
    PRIMARY KEY (Payment_Id),
    KEY Payment_Method_Users_FK (User_Id),
    CONSTRAINT Payment_Method_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id),
    CONSTRAINT Payment_Method_Order_Payments_FK FOREIGN KEY (Payment_Id) REFERENCES Order_Payments (Order_Payment_Id)
)