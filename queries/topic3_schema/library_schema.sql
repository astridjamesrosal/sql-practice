CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title TEXT,
    author TEXT,
    year INTEGER,
    status TEXT
);

CREATE TABLE Accounts (
    account_id INTEGER PRIMARY KEY,
    name TEXT,
    contact TEXT
)

CREATE TABLE Transactions (
    transaction_id INTEGER PRIMARY KEY,
    book_id INTEGER,
    account_id INTEGER.
    borrow_date TEXT,
    return_date TEXT,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
)