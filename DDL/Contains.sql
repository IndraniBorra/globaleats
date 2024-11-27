CREATE TABLE Contains ( 
  Order_Id INT NOT NULL,
  Item_Id INT NOT NULL,
  PRIMARY KEY (Order_Id, Item_Id),
  CONSTRAINT Contains_Orders_FK FOREIGN KEY (Order_Id) REFERENCES Orders (Order_Id),
  CONSTRAINT Contains_Menu_Items_FK FOREIGN KEY (Item_Id) REFERENCES Menu_Items (Item_Id)
);
-- Chnage the table name to Orders_Items
RENAME TABLE Contains TO Orders_Items;