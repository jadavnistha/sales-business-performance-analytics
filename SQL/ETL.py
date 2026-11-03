import pandas as pd
from sqlalchemy import create_engine

# PostgreSQL connection
engine = create_engine(
    "postgresql+psycopg2://postgres:root@localhost:5432/sales_database"
)

# Read CSV

df = pd.read_csv("sales_data.csv")
df.columns = df.columns.str.lower()
# Upload to PostgreSQL
df.to_sql(
    "sales",
    engine,
    if_exists="replace",  # Replace the table every time
    index=False,
)

print("Data uploaded successfully!")
