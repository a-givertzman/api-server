import os
import psycopg2


dbName = 'crane_data_server'
dbUser = 'crane_data_server'
dbPass = '00d0-25e4-*&s2-ccds'


longString = f'''11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\
11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\
longString '''
sufix = f'{len(longString)}'
sufixLen = len(sufix) + 6
longString = longString + sufix + ' chars'


def __connectPsqlRoot(autocommit = False):
    conn = psycopg2.connect(
        host="localhost",
        database="postgres",
        user="postgres",
        password="123qwe"
    )
    cur = conn.cursor()
    conn.autocommit = autocommit
    return conn, cur

def __connectPsql(autocommit = False):
    conn = psycopg2.connect(
        host="localhost",
        database=dbName,
        user=dbUser,
        password=dbPass
    )
    cur = conn.cursor()
    conn.autocommit = autocommit
    return conn, cur

def __psqlQuery(cur, sql, autocommit = False):
    cur.execute(sql)
    try:
        records = cur.fetchall()
        print(f'result: {records}')
        return records
    except Exception as err:
        print(f'psqlQuery | error: {err}')
        return None


def createDatabase(curSel):
    result = __psqlQuery(curSel, f"""
        SELECT 1 FROM pg_user WHERE usename = '{dbUser}';
    """)
    if not result:
        _, cur = __connectPsqlRoot(autocommit=True)
        cur.execute(f"""
            CREATE USER {dbUser} WITH PASSWORD '{dbPass}' CREATEDB CREATEROLE;
        """)

    result = __psqlQuery(curSel, f"""
        SELECT 1 FROM pg_database WHERE datname = '{dbName}';
    """)
    if not result:
        conn, cursor = __connectPsqlRoot(autocommit=True)
        cursor.execute(f'CREATE DATABASE {dbName}')
        cursor.execute(f'GRANT ALL PRIVILEGES ON DATABASE {dbName} TO {dbUser}')
        cursor.close()
        conn.close()


sqls = {
    'app_user': '''
do $$
begin
end$$;
''',
    'sql1': '''do $$
begin
end$$;
''',
    'sql': '''do $$
begin
end$$;
''',
}


if __name__ == '__main__':
    _, curSel = __connectPsqlRoot()
    createDatabase(curSel)
    # for table, sql in sqls.items():
    #     result = __psqlQuery(curSel, f"""SELECT 1 FROM pg_database WHERE datname = '{table}';""")
    #     if not result:
    #         conn, cur = __connectPsql(autocommit=True)
    #         cur.execute(sql)
    #         cur.close()
    #         conn.close()
    files = [
        'create_postgres_database.sql',
    ]
    for path in files:
        dir = os.path.dirname(os.path.realpath(__file__))
        fullPath = f'{dir}/{path}'
        print(f'executing sql script: {fullPath}')
        with open(fullPath) as f:
            sql = f.read()
            f.close()
            conn, cur = __connectPsql(autocommit=True)
            cur.execute(sql)
            cur.close()
            conn.close()


