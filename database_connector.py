import pandas as pd
import sqlite3

conn = sqlite3.connect('data/data.db')
cursor = conn.cursor()

def execute_statement(statement):
    cursor.execute(statement)
    return cursor.fetchall()