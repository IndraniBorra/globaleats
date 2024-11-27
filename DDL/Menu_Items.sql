CREATE TABLE Menu_Items (
  Item_Id int NOT NULL,
  Item_Name varchar(100) NOT NULL,
  Item_Description varchar(100) NOT NULL,
  Item_Price decimal(10,2) NOT NULL,
  Item_Category varchar(100) NOT NULL,
  CONSTRAINT Menu_Items_PK PRIMARY KEY (Item_Id),
  CONSTRAINT Menu_Items_Menu_Item_Category_FK FOREIGN KEY (Item_Category) REFERENCES Menu_Item_Category (Item_Category)
);
-- add column  Item_Created_By_User_Id to the table with datatype INT and and forign key from Restaurant_Owner table
ALTER TABLE Menu_Items ADD Item_Created_By_User_Id INT;
ALTER TABLE Menu_Items ADD CONSTRAINT Menu_Items_Restaurant_Owner_FK FOREIGN KEY (Item_Created_By_User_Id) REFERENCES Restaurant_Owner (User_Id);