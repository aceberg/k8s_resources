#!/bin/python3

import mysql.connector
import random
import time
import os

htmlpage = "<html><head><title>%s</title></head><body>%s</body></html>"
nginxpath = "/usr/share/nginx/html/"

isExist = os.path.exists(nginxpath)
if not isExist:
  os.makedirs(nginxpath)

mydb = mysql.connector.connect(
  host=os.environ['DBHOST'],
  user=os.environ['DBUSER'],
  password=os.environ['DBPASS'],
  database=os.environ['DBNAME']
)

mycursor = mydb.cursor()

while True:
  i = random.randint(1, 5)
  mycursor.execute("SELECT * FROM articles WHERE id = '%i';" % i)
  result = mycursor.fetchall()
  for x in result:
    atitle = x[1]
    atext = x[2]

  f = open("/usr/share/nginx/html/index.html", "w")
  f.write(htmlpage % (atitle, atext))
  f.close()

  time.sleep(120)
  print("Title =", atitle)

mydb.close()

