from pymongo import MongoClient

# @readme
# This is a first draft during the lab since i faced some
# issues installing and it took me sometime to fix it

def print_output(cursor):
    for res in cursor:
        print(res)
    return


def f1(col):
    return col.find({"cuisine": "Indian"})

def f2(col):
    return col.find({"$or: [{'cuisine': 'Indian'},{'cuisine': 'Thai'}]"})
def main():
    try:
        connect = MongoClient("mongodb://localhost:27017")
        db = connect['lab11']
        dbCol = db['restaurants']
        # Exercise 1
        print("Exercise One:")
        print("Indian cuisines are:")
        print_output(f2(dbCol))


    except Exception as err:
        print(err)
    return



if __name__ == '__main__':
    main()
