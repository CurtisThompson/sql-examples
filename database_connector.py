import pandas as pd
import sqlite3


CONN = sqlite3.connect('data/data.db')
CURSOR = CONN.cursor()


def execute_statement(statement, cursor=CURSOR):
    """Run a SQL query on the existing connection."""
    cursor.execute(statement)
    res = cursor.fetchall()
    column_names = [description[0] for description in cursor.description]
    return pd.DataFrame(res, columns=column_names)


def load_query_from_file(file_path):
    """Loads a query from a local .sql file."""
    if file_path[-4:] != '.sql':
        return None
    
    with open(file_path, 'r') as f:
        query = f.read()
    
    return query


def run_query_from_file(file_path):
    """Load a query from a local .sql file, run it, and return result."""
    query = load_query_from_file(file_path)
    result = execute_statement(query)
    return result