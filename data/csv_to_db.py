import pandas as pd
import sqlite3

conn = sqlite3.connect('data.db')
df = pd.read_csv('aves_data.csv')
df.to_sql('cites', conn, if_exists='append', index=False)