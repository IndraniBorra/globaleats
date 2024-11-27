CREATE TABLE Restaurant_Owner (
  User_Id varchar(100) DEFAULT NULL 
  CONSTRAINT Restaurant_Owner_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
);
-- chnage the User_Id to INT
ALTER TABLE Restaurant_Owner MODIFY User_Id INT;
-- User_Id is the primary key
ALTER TABLE Restaurant_Owner ADD CONSTRAINT Restaurant_Owner_PK PRIMARY KEY (User_Id);
-- Add column Restaurant_Id to the table and forign key to Restaurants table
ALTER TABLE Restaurant_Owner ADD Restaurant_Id INT;
ALTER TABLE Restaurant_Owner ADD CONSTRAINT Restaurant_Owner_Restaurant_FK FOREIGN KEY (Restaurant_Id) REFERENCES Restaurants (Restaurant_Id);