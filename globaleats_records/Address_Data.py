import mysql.connector
from faker import Faker

# Establish a connection to the MySQL database
connection = mysql.connector.connect(
    host="localhost",  # Replace with your host
    user="root",       # Replace with your MySQL username
    password="",       # Replace with your MySQL password
    database="globaleats"  # Replace with your database name
)

# Create a cursor object to execute SQL queries
cursor = connection.cursor()

# Initialize the Faker instance
fake = Faker()

# Function to insert data into the MySQL table Address
def insert_address_data(records_count):
    for _ in range(records_count):
        street = fake.street_address()
        city = fake.city()
        state = fake.state()
        zip_code = fake.zipcode()

        # SQL query to insert data
        query = "INSERT INTO Address (Street, City, State, Zip_Code) VALUES (%s, %s, %s, %s)"
        values = (street, city, state, zip_code)

        # Execute the query
        cursor.execute(query, values)

    # Commit the transaction
    connection.commit()
    print(f"{records_count} records inserted successfully!")

# Insert 10,000 fake records
insert_address_data(10000)

# Close the cursor and connection
cursor.close()
connection.close()