#write a python program where looping the uSER_aDDRESS_iD TO aDDRESSS_iD    

import mysql.connector

# Establish a connection to the MySQL database
connection = mysql.connector.connect(
    host="localhost",  # Replace with your host
    user="root",       # Replace with your MySQL username
    password="",       # Replace with your MySQL password
    database="globaleats"  # Replace with your database name
)

# Create a cursor object to execute SQL queries
cursor = connection.cursor()

# Function to loop through User_Address_Id and match with Address_Id
def loop_user_address():
    for i in range(10000):
        user_address_id = i
        query_update = "UPDATE Users SET User_Address_Id = %s WHERE User_Id = %s"
        cursor.execute(query_update, (user_address_id, user_address_id))
        connection.commit()

   

# Call the function to loop through User_Address_Id and match with Address_Id
loop_user_address()

# Close the cursor and connection
cursor.close()
connection.close()