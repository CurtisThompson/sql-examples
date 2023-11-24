import pandas as pd
import sqlite3


CONN = sqlite3.connect('data/data.db')
CURSOR = CONN.cursor()


def execute_statement(statement, cursor=CURSOR):
    """Run a SQL statement on the existing connection."""
    cursor.execute(statement)


def execute_query(statement, cursor=CURSOR):
    """Run a SQL query on the existing connection."""
    cursor.execute(statement)
    res = cursor.fetchall()
    column_names = [description[0] for description in cursor.description]
    return pd.DataFrame(res, columns=column_names)


def load_sql_from_file(file_path):
    """Loads a query from a local .sql file."""
    if file_path[-4:] != '.sql':
        return None
    
    with open(file_path, 'r') as f:
        query = f.read()
    
    return query


def run_statement_from_file(file_path, cursor=CURSOR):
    """Load a statement from a local .sql file, run it, and return result."""
    stmt = load_sql_from_file(file_path)
    execute_statement(stmt, cursor=cursor)


def run_query_from_file(file_path, cursor=CURSOR):
    """Load a query from a local .sql file, run it, and return result."""
    query = load_sql_from_file(file_path)
    result = execute_query(query, cursor=cursor)
    return result
