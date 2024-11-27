CREATE TABLE Promotions (
  Restaurant_Id INT NOT NULL,
  Promo_code varchar(100) DEFAULT NULL,
  Promo_Expiry_date date NOT NULL,
  Order_Id int NOT NULL,
  Min_Order_Amount float DEFAULT NULL
  Promo_Description varchar(100),
  CONSTRAINT Promotions_Orders_FK FOREIGN KEY (Order_Id) REFERENCES Orders (Order_Id)
);