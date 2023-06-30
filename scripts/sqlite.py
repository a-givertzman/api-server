import sqlite3
from sqlite3 import Error

def createConnection(db_file):
    '''create a database connection to the SQLite database
        specified by the db_file
    :param db_file: database file
    :return: Connection object or None'''
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Error as e:
        print(e)

    return conn

def select(conn, sql: str):
    '''Query all rows from table'''
    cur = conn.cursor()
    cur.execute(sql)
    rows = cur.fetchall()
    return rows

conn = createConnection('./../database22.sqlite')
if conn:
    rows = select(conn, 'select * from `dep_objects`;')
    for row in rows:
        print(row)