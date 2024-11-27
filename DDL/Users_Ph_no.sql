Create Table Users_Ph_no (
  User_Id INT NOT NULL,
  Ph_No VARCHAR(100) NOT NULL,
  PRIMARY KEY (User_Id, Ph_No),
  CONSTRAINT Users_Ph_no_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
);
