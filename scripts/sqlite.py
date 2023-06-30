import sqlite3
from sqlite3 import Error

def createConnection(path):
    '''create a database connection to the SQLite database
        specified by the db_file
    :param db_file: database file
    :return: Connection object or None'''
    conn = None
    try:
        conn = sqlite3.connect(path)
    except Error as err:
        print(err)

    return conn

def select(conn, sql: str):
    '''Query all rows from table'''
    cur = conn.cursor()
    cur.execute(sql)
    rows = cur.fetchall()
    return rows

conn = createConnection('./../database22.sqlite')
if conn:
    rows = select(conn, 'select * from `do_data`;')
    # rows = select(conn, 'select * from `dep_objects`;')
    for row in rows:
        print(row)
else:
    print('sqlite connection error')