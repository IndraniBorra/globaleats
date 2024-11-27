CREATE TABLE Promotions (
  Restaurant_Id INT NOT NULL,
  Promo_code varchar(100) DEFAULT NULL,
  Promo_Expiry_date date NOT NULL,
  Order_Id int NOT NULL,
  Min_Order_Amount float DEFAULT NULL
  Promo_Description varchar(100),
  CONSTRAINT Promotions_Orders_FK FOREIGN KEY (Order_Id) REFERENCES Orders (Order_Id)
);
-- An order can contain zero or one promotions
/* add forign key to restaurant id */
--- remane the column name from rest_id to Restraurant_Id
Alter table Promotions rename column rest_id to Restaurant_Id;
Alter table Promotions add constraint Promotions_Restaurants_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id);
-- add promo_code unique and PK, and add resturant_id to the PK
Alter table Promotions add constraint Promotions_PK PRIMARY KEY (Promo_code, Restaurant_Id);
-- change restaurant_id data type to INT
Alter table Promotions modify column Restaurant_Id int;