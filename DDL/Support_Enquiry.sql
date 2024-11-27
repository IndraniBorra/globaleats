CREATE TABLE Support_Enquiry (
    Enquiry_Id int NOT NULL,
    User_Id Int NOT NULL,
    Enquiry_Type varchar(100) NOT NULL,
    Enquiry_Text varchar(1000) NOT NULL,
    Enquiry_Date datetime NOT NULL,
    Enquiry_Status varchar(100) NOT NULL,
    PRIMARY KEY (Enquiry_Id),
    KEY Support_Enquiry_Users_FK (User_Id),
    CONSTRAINT Support_Enquiry_Users_FK FOREIGN KEY (User_Id) REFERENCES Users (User_Id)
);