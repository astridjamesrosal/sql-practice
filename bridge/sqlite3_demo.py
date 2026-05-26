import sqlite3
#Connect to the database (creates library.db if it doesn't exist)
connection = sqlite3.connect('library.db')
#Create a cursor — the object that sends SQL commands to the database
cursor = connection.cursor()

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

cursor.execute("INSERT INTO Books (title, author, year, status) VALUES ('The Night We Met', 'Abby Jimenez', 2026, 'available');")

cursor.execute("INSERT INTO Accounts (name, contact) VALUES ('Maria Santos', '09171234567');")

cursor.execute("INSERT INTO Transactions (account_id, book_id, borrow_date) VALUES (1, 1, '2026-05-01');")

cursor.execute("SELECT * FROM Books;")
print(cursor.fetchall())

cursor.execute("SELECT * FROM Accounts;")
print(cursor.fetchall())

cursor.execute("SELECT * FROM Transactions;")
print(cursor.fetchall())

#Close the connection
connection.close()
