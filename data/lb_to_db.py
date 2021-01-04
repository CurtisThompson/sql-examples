import pandas as pd
import sqlite3

conn = sqlite3.connect('data.db')
df = pd.read_csv('leicestershire_birds.csv')
df.to_sql('LeicestershireBirds', conn, if_exists='append', index=False)