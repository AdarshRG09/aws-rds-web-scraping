import requests
import pymysql
import urllib3

# Suppress SSL warnings
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# RDS Database Connection Details
DB_HOST = "database-1.c3wyy6ymk7sh.ap-southeast-2.rds.amazonaws.com"
DB_USER = "admin"
DB_PASSWORD = "Dsceai&ds"
DB_NAME = "quotes_db"  # Change this to your actual database name

# API Endpoint
API_URL = "https://zenquotes.io/api/quotes"  # Fetch multiple quotes

# Establish database connection
try:
    connection = pymysql.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME,
        port=3306,
        cursorclass=pymysql.cursors.DictCursor
    )
    print("Connected to RDS successfully.")
except pymysql.MySQLError as e:
    print(f"Database Connection Error: {e}")
    exit()

# Fetch multiple quotes
try:
    response = requests.get(API_URL, verify=False)  # Avoid SSL verification warnings
    quotes = response.json()
    
    if isinstance(quotes, list):
        with connection.cursor() as cursor:
            for quote_data in quotes[:10]:  # Fetch only 10 quotes to limit API calls
                quote = quote_data["q"]
                author = quote_data["a"]
                
                # Insert into database
                sql = "INSERT INTO quotes (quote, author) VALUES (%s, %s)"
                cursor.execute(sql, (quote, author))

        connection.commit()
        print("Quotes saved successfully.")

    else:
        print("Failed to retrieve quotes.")

except requests.exceptions.RequestException as e:
    print(f"API Error: {e}")

finally:
    connection.close()
    print("Database connection closed.")

