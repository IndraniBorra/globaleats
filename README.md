# connect to the server
```
mysql -u root -p
```

# connect to the database
```
use globaleats;
```

# create a table
```
source /Users/indraniborra/Python/create_table_employee.sql
```

# select all the records from the table
```
select * from employee;
```

# Git commands

```
git remote add origin https://github.com/IndraniBorra/globaleats.git

git add globaleatsdata.py
git add README.md
git commit -m "added globaleatsdata.py and README.md"
git push --set-upstream origin main
```


```
Project Name: globaleats
``` 
Problem Statement:

GlobalEats is a company that connects restaurants worldwide with customers through an online platform. GlobalEats would like to build a relational database to efficiently manage their operations. The database should handle the following key modules: Users, Employees, Restaurants, Menu Items, Orders, Payments, and Reviews.
A User could be a Customer or a Restaurant Owner or both. All users have common attributes like User ID, Name (First, Middle, Last), Address, Gender, Date of Birth, and Phone number. A user can have multiple phone numbers. Customers can place orders, and Restaurant Owners can manage restaurant profiles and menu items. 
Each restaurant has a Restaurant ID, Restaurant Name, Cuisine Type, Location, and Operational Hours. The Restaurant Owner manages the restaurant. The database should store details about the operational hours, including opening and closing times for each day of the week. Restaurants can run Promotions. Each Promotion has a Promotion Code and Description. Promotion Codes are only unique within a particular restaurant.
Menu Items are associated with restaurants. Each Menu Item has an Item ID, Name, Description, Price, and Category (e.g., Appetizer, Main Course, Dessert, Beverage). Menu Items can have multiple categories. A customer can save items in a "Favorites" list.
Customers can place Orders. Each order records details such as Order ID, Date of Order, Total Amount, Payment Method (Credit Card, Debit Card, Digital Wallet, etc.), and Delivery Status. Orders are linked to both the Customer and the Restaurant. Each order can have multiple items from the menu item of the restaurant.
Customers can leave Reviews on menu items. Reviews include Review ID, Rating (1-5), Review Text, and Date of Review. Each review is associated with a specific menu item.
GlobalEats also employs Employees, who can be one of four roles: Platform Managers, Support Agents, Delivery Coordinators, and Delivery Drivers. Employees must be at least 18 years old. Each Employee has an Employee ID in the format “EXXX,” where X is a number from 0 to 9 (e.g., “E000,” “E999”). Employees also have attributes such as Start Date and Department.
Platform Managers oversee the overall system and manage high-level operations.
Support Agents handle inquiries from users. Each inquiry has its own ID and inquiry time. Support Agents must be trained by a Trainer, who can be either a Platform Manager or a Delivery Coordinator. Trainers have unique Trainer Certificates, and the certificate issuing date is recorded. One Trainer can train multiple Support Agents.
Delivery Coordinators manage the logistics of delivery drivers, ensuring efficient order deliveries. They are responsible for assigning drivers to orders.
Delivery Drivers, who are responsible for delivering orders. Delivery drivers have attributes such as Driver ID, Name, Contact Information, and Vehicle Type. A driver can deliver multiple orders, and an order can have only one assigned driver. Delivery details, including pickup and delivery times, must be stored.
Project Questions (answer in Phase 4)
Would a superclass/subclass relationship be beneficial in the GlobalEats database design? Why or why not?
Can you think of 5 additional rules (other than those described above) that would likely be used in this environment? How would your design change to accommodate these rules?
Justify the use of a Relational DBMS like Oracle for this project (Successfully design a relational database system, and show all implementation in the final report at Phase IV).
Project Exercises (Reminder: Read the whole document and the questions before you start the design, you might need add additional assumption based on the questions.)
Phase I: Draw an EER to accurately represent this set of requirements. This will be your Conceptual Design. Clearly specify any assumptions that you are making. You can use any tools (software) to draw the EER but must use the symbols consistent with our textbook. The output of Phase I is EER diagram that satisfies the project description as much as possible. Some constraints may not be able to be specified in EER diagram, but please remember to go back to check the constraints in later phases to complete them. 
Phase II: Logical Database Design. It has been decided to use a relational DBMS to implement the database. Perform the following steps.
Convert your Conceptual model (Phase I, feel free to change your conceptual model if needed and draw EER after your modifications) to an implementation data model that can be implemented in a relational DBMS like Oracle. During this process you replace M-N relationships and multi-valued attributes with constructs that can be implemented in the relational DBMS.
Document your design in Database Schema format, explain how you obtained you schema. The output of Phase II is the schema of database derived from your EER design. Please indicate the primary keys and foreign keys of each relation.
Phase III: Database Implementation. 
a. Normalize all tables to third normal form (3NF). 
b. Draw a dependency diagram for each table after normalization. 
c. Write SQL statements to create relational database and all other structures. Primary key and foreign keys must be defined as appropriate. Also specify data type and constraints for each attribute and in addition to specify the referential integrity. 
d. Use the Create View statement to create the following views:
- TopCustomers: View of customers who placed the most orders in the past month.
- PopularRestaurants: View of the most ordered-from restaurants in the past year.
- HighlyRatedItems: View of menu items that have an average rating of at least 4.5.
- FrequentDrivers: View of delivery drivers who have delivered the most orders in the past month.
- PotentialOwners: View of customers who have added at least 10 menu items to their Favorites list but have not yet registered as Restaurant Owners.
e.Write SQL statements for the following queries:
- List details of restaurant owners who have signed up within the past three months.
- Find the names of customers who placed orders with only two restaurants in the past month.
- Calculate the average number of orders placed by the top five customers in the platform.
- List the name of each restaurant and its most popular menu item.
- Identify menu items that haven’t been ordered in the last six months.
- Find customers who have reviewed all the items from a specific restaurant.
- Identify the restaurant with the most promotions’ amount in the past year.
- Find the year with the highest total order payment.
- List the names of customers who ordered the most popular menu items.
- Find delivery drivers who have delivered at least 10 orders in the past month.
- List customers who have been active for more than two years.
- Find the number of orders delivered by the top three delivery drivers.
- List the restaurant owner who manages the most restaurants.
- Identify restaurants that have run promotions in every quarter of the past year.
- List all employees who are also restaurant owners, and display their employee details along with the details of the restaurant they own.
- List the names and contact information of all employees who were hired before a specific date but have not received any new training since that date.
a. Problem description (from above). 
b. Project questions (Answer the 3 questions). 
c. EER diagram with all assumptions. 
d. Relational Schema after normalization. Include primary and foreign keys for all relations. 
e. Dependency diagrams (from Phase III-b).
f. All SQL statements (from Phase III-c, d, and e).