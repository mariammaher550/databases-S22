from unittest import result
import psycopg2
from geopy.geocoders import Nominatim

con = psycopg2.connect(
    database = "dvdrental",
    user = "postgres",
    password = "abc_123",
    port = "5432",
)

geolocator = Nominatim(user_agent="myapp")
cur = con.cursor()
new=[]

def add_columns():
    cur.execute("select address.address_id, address.address from address where address.city_id < 601 and address.city_id > 399 and address.address like '%11%' ")
    result = cur.fetchall()

    for x in result :
        add = []
        add.append(x[1])
        try: 
            location = geolocator.geocode(x[1])
            add.append(location.latitude)
            add.append(location.longitude)
        except:
            add.append(0)
            add.append(0)
        new.append(add)

        cur.execute("")
        cur.execute("")
    con.commit()
    con.close()    


