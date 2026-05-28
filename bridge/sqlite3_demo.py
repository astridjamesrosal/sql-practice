import sqlite3
#Connect to the database and if the file doesn't exist, it creates library.db instead.
connection = sqlite3.connect('library.db')
#Create a cursor which is the object that sends SQL commands to the database
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

def add_account(name, contact):
    cursor.execute("INSERT INTO Accounts (name, contact) VALUES (?, ?)", (name, contact))
    connection.commit()

def add_transaction(account_id, book_id, borrow_date, return_date=None):
    cursor.execute("INSERT INTO Transactions (account_id, book_id, borrow_date, return_date) VALUES (?, ?, ?, ?)", (account_id, book_id, borrow_date, return_date))
    connection.commit()

def update_book_status(book_id, status):
    cursor.execute("UPDATE Books SET status = ? WHERE book_id = ?;", (status, book_id))
    connection.commit()

def delete_book(book_id):
    cursor.execute("DELETE FROM Books WHERE book_id = ?", (book_id,))
    connection.commit()

def get_all(table_name):
    allowed = ["Books", "Accounts", "Transactions"]
    if table_name not in allowed:
        print(f"Invalid table name: {table_name}")
        return
    query = f"SELECT * FROM {table_name}"
    cursor.execute(query)
    print(cursor.fetchall())

create_tables()

#Insert
add_book("The Night We Met", "Abby Jimenez", 2026, "available")
add_account("Maria Santos", "09171234567")
add_transaction(1, 1, "2026-05-01")

#View before changes
get_all("Books")
get_all("Accounts")
get_all("Transactions")

# Update and Delete
update_book_status(1, "borrowed")
delete_book(1)

#View after changes
get_all("Books")
get_all("Accounts")

#Close the connection
connection.close()