from pymongo import MongoClient


# @readme
# This is a first draft during the lab since I faced some
# issues installing, and it took me sometime to fix it

def print_output(cursor):
    for res in cursor:
        print(res)
    return


# Query all indian cuisines
def f1(col):
    return col.find({"cuisine": "Indian"})


# Query all Indian and Thai cuisines
def f2(col):
    return col.find({'$or': [{'cuisine': 'Indian'}, {'cuisine': 'Thai'}]})


# Find a restaurant with the following address: 1115 Rogers Avenue, 11226
def f3(col):
    return col.find({'$and': [{"address.zipcode": "11226"}, {"address.street": "Rogers Avenue"},
                              {"address.building": "1115"}]})


def insert(col, building_number, street, zip_code, coo_0, coo_1, borough, cuisine, name, res_id, grade,
           score, timestamp):
    return col.insert_one({
        'address' : {"building": building_number,
                     "coord": {'o': coo_0, '1': coo_1},
                     "street": street,
                     "zipcode": zip_code
                     },
        'borough': borough,
        'cuisine': cuisine,
        'grades': {'date': timestamp, 'grade': grade, 'score': score},
        'name': name,
        'restaurant_id': res_id
    })

def delete(col):
    col.delete_one({'brought': 'manhattan'})
    return

def f4(col):
    col.delete_many({'cuisine': 'Thai'})
    return

def f5(col):
    query = col.find({'address.street': 'Rogers Avenue'})
    for restaurant in query:
        cnt = 0
        flag = True
        for grades in restaurant['grades']:
            if(grades['grade'] == 'C'):
                cnt += 1
            if (cnt > 1):
                col.delete({'restaurant_id': restaurant["restaurant_id"]})
                flag = False
                break
    return






def main():
    try:
        connect = MongoClient("mongodb://localhost:27017")
        db = connect['lab11']
        dbCol = db['restaurants']
        #ex1
        f1(dbCol)
        f2(dbCol)
        f3(dbCol)
        
        #ex2
        # print_output(insert(dbCol, '1480', '2 Avenue', '10072', '-73.9557413', '40.7720266',
        #                     'Manhattan', 'Italian', 'Vella', '41704620', 'A', '11', 'oct, 2014'))

        #ex3
        delete(dbCol)
        f4(dbCol)
        
        #ex4
        f5(dbCol)

    except Exception as err:
        print(err)
    return


if __name__ == '__main__':
    main()
