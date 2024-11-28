import mysql.connector
from faker import Faker

# Establish a connection to the MySQL database
connection = mysql.connector.connect(
    host="localhost",  # Replace with your host
    user="root",       # Replace with your MySQL username
    password="",  # Replace with your MySQL password
    database="globaleats"  # Replace with your database name
)

# Create a cursor object to execute SQL queries
cursor = connection.cursor()

# Initialize the Faker instance
fake = Faker()

# Function to insert data into the MySQL table Users
def insert_Restaurant_data(records_count):
    for _ in range(records_count):
        restaurant_name = fake.restau
        cuisine_type = fake.random_element(elements=("Italian", "Chinese", "Indian", "Mexican", "American"))
        restaurant_address = fake.address()
        operational_hours = fake.time()
  

        # SQL query to insert data
        query = "INSERT INTO Restaurants (Restaurant_Name, Cuisine_Type, Restaurant_Address, Operational_Hours) VALUES (%s, %s, %s, %s)"
        values = (restaurant_name, cuisine_type, restaurant_address, operational_hours)

        # Execute the query
        cursor.execute(query, values)

    # Commit the transaction
    connection.commit()
    print(f"{records_count} records inserted successfully!")



insert_Restaurant_data(50)

# Close the cursor and connection
cursor.close()
connection.close()
