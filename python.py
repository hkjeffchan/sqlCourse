import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="YourRootPasswordHere",
  database="school"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM class")

myresult = mycursor.fetchall()

for x in myresult:
  print(x)