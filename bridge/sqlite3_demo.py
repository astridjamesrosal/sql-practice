import sqlite3
#Connect to the database (creates library.db if it doesn't exist)
connection = sqlite3.connect('library.db')
#Create a cursor — the object that sends SQL commands to the database
cursor = connection.cursor()

def create_tables():
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS Books (
            book_id INTEGER PRIMARY KEY,
            title TEXT,
            author TEXT,
            year INTEGER,
            status TEXT
        )
    """)

    cursor.execute("""
        CREATE TABLE IF NOT EXISTS Accounts (
            account_id INTEGER PRIMARY KEY,
            name TEXT,
            contact TEXT
        )
    """)

    cursor.execute("""
        CREATE TABLE IF NOT EXISTS Transactions (
        transaction_id INTEGER PRIMARY KEY,
        book_id INTEGER,
        account_id INTEGER,
        borrow_date TEXT,
        return_date TEXT,
        FOREIGN KEY (book_id) REFERENCES Books(book_id),
        FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
        )
    """)
    #Save all changes to the database
    connection.commit()

def add_book(title, author, year, status):
    cursor.execute("INSERT INTO Books (title, author, year, status) VALUES (?, ?, ?, ?)", (title, author, year, status))
    connection.commit()

def get_all(table_name):
    query = f"SELECT * FROM {table_name}"
    cursor.execute(query)
    print(cursor.fetchall())

create_tables()
add_book("The Night We Met", "Abby Jimenez", 2026, "available")
add_book("Yesteryear", "Caro Claire Burke", 2026, "borrowed")
add_book("Our Perfect Storm", "Carley Fortune", 2026, "available")
get_all("Books")
get_all("Accounts")
get_all("Transactions")

#Close the connection
connection.close()