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
def insert_fake_data(records_count):
    for _ in range(records_count):
        first_name = fake.first_name()
        middle_name = fake.first_name()
        last_name = fake.last_name()
        dob = fake.date_of_birth()
        gender = fake.random_element(elements=("M", "F"))
        street = fake.street_address()
        city = fake.city()
        state = fake.state()
        pin_code = fake.zipcode()
  

        # SQL query to insert data
        query = "INSERT INTO users (First_Name, Middle_Name,Last_Name, DOB,Gender, Street_Address, City,State, Pincode) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
        values = (first_name, middle_name, last_name, dob, gender, street, city, state, pin_code)

        # Execute the query
        cursor.execute(query, values)

    # Commit the transaction
    connection.commit()
    print(f"{records_count} records inserted successfully!")



insert_fake_data(10000)

# Close the cursor and connection
cursor.close()
connection.close()
