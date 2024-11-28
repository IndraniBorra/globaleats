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

# Function to insert data into the MySQL table Users_Ph_no
def insert_fake_phone_no(records_count):
    for user_id in range(1, records_count + 1):
        phone_no = fake.phone_number()
        phone_no1 = fake.phone_number()

        query = "INSERT INTO Users_Ph_no (User_Id, Ph_No) VALUES (%s, %s)"
        values = (user_id, phone_no)
        cursor.execute(query, values)

        query1 = "INSERT INTO Users_Ph_no (User_Id, Ph_No) VALUES (%s, %s)"
        values1 = (user_id, phone_no1)
        cursor.execute(query1, values1)

    connection.commit()
    print(f"{records_count} records inserted successfully!")



insert_fake_phone_no(10000)

# Close the cursor and connection
cursor.close()
connection.close()