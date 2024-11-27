CREATE TABLE Menu_Items (
  Item_Id int NOT NULL,
  Item_Name varchar(100) NOT NULL,
  Item_Description varchar(100) NOT NULL,
  Item_Price decimal(10,2) NOT NULL,
  Item_Category varchar(100) NOT NULL,
  CONSTRAINT Menu_Items_PK PRIMARY KEY (Item_Id),
  CONSTRAINT Menu_Items_Menu_Item_Category_FK FOREIGN KEY (Item_Category) REFERENCES Menu_Item_Category (Item_Category)
);
