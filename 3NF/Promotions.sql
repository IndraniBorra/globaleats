CREATE TABLE Promotions (
  Promotion_Id INT NOT NULL AUTO_INCREMENT primary key,
  Restaurant_Id INT NOT NULL,
  Promo_code varchar(100) DEFAULT NULL,
  Promo_Expiry_date date NOT NULL,
  Min_Order_Amount float DEFAULT NULL,
  Promo_Description varchar(100),
  CONSTRAINT Promotions_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id)
);

