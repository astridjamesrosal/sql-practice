-- ==================
-- BOOKS
-- ==================

-- INSERT
-- Insert "The Night We Met" by Abby Jimenez with its year with the status of available.
INSERT INTO Books (title, author, year, status)
VALUES ('The Night We Met', 'Abby Jimenez', 2026, 'available');

-- Insert "Yesteryear" by Caro Burke with its year with the status of borrowed.
INSERT INTO Books (title, author, year, status)
VALUES ('Yesteryear', 'Caro Claire Burke', 2026, 'borrowed');

-- Insert "Our Perfect Storm" by Carley Fortune with its year with the status of available.
INSERT INTO Books (title, author, year, status)
VALUES ('Our Perfect Storm', 'Carley Fortune', 2026, 'available');

-- SELECT
-- Get All the Books.
SELECT * FROM Books;

-- Get All the Books with the status of available.
SELECT * FROM Books WHERE status = 'available';

-- Get only the title and author of All the Books ordered by Year.
SELECT title, author FROM Books ORDER BY year ASC;

-- UPDATE
-- Update the status of the Yesteryear book to Available because it is now returned.
UPDATE Books SET status = 'available' WHERE book_id = 2;

-- Update the year of The Night We Met book to 2025 because we got it reprinted.
UPDATE Books SET year = 2025 WHERE book_id = 1;

-- Update the status of Our Perfect Storm book to borrowed because it was now borrowed.
UPDATE Books SET status = 'borrowed' WHERE book_id = 3;

-- DELETE
-- Remove The Night We Met book because it is to damaged to be repaired.
DELETE FROM Books WHERE book_id = 1;

-- Remove the Yesteryear book because it was recalled by the publisher.
DELETE FROM Books WHERE book_id = 2;

-- Remove the Our Perfect Storm book because it was reportedly stolen.
DELETE FROM Books WHERE book_id = 3;

-- ==================
-- ACCOUNTS
-- ==================

-- INSERT
-- Adding Name and Contact for the Accounts Table.
INSERT INTO Accounts (name, contact) VALUES ('Maria Santos', '09171234567');
INSERT INTO Accounts (name, contact) VALUES ('James Reyes', '09281234567');
INSERT INTO Accounts (name, contact) VALUES ('Luna Cruz', '09391234567');

-- SELECT
-- Getting All the Accounts.
SELECT * FROM Accounts;

-- Getting the Account where the name is Maria Santos.
SELECT * FROM Accounts WHERE name = 'Maria Santos';

-- Getting the Account names ordered alphabetically.
SELECT name FROM Accounts ORDER BY name ASC;

-- UPDATE
-- Updating the contact number of Account Id 1.
UPDATE Accounts SET contact = '09179999999' WHERE account_id = 1;

-- Updating the name of Account Id 2.
UPDATE Accounts SET name = 'James R. Reyes' WHERE account_id = 2;

-- Updating the contact number of Account Id 3.
UPDATE Accounts SET contact = '09390000000' WHERE account_id = 3;

-- DELETE
-- Delete Account Id 1, Maria Santos closed her account.
DELETE FROM Accounts WHERE account_id = 1;

-- Delete Account Id 2, James R. Reyes was banned from the library.
DELETE FROM Accounts WHERE account_id = 2;

-- Delete Account Id 3, Luna Cruz moved away and requested deletion.
DELETE FROM Accounts WHERE account_id = 3;

-- ==================
-- TRANSACTIONS
-- ==================

-- INSERT
-- Maria Santos (account_id: 1) borrowed The Night We Met (book_id: 1) on 2026-05-01, not yet returned.
INSERT INTO Transactions (account_id, book_id, borrow_date) 
VALUES (1, 1, '2026-05-01');

-- James Reyes (account_id: 2) borrowed Yesteryear (book_id: 2) on 2026-05-10, returned 2026-05-20.
INSERT INTO Transactions (account_id, book_id, borrow_date, return_date) 
VALUES (2, 2, '2026-05-10', '2026-05-20');

-- Luna Cruz (account_id: 3) borrowed Our Perfect Storm (book_id: 3) on 2026-05-15, not yet returned.
INSERT INTO Transactions (account_id, book_id, borrow_date) 
VALUES (3, 3, '2026-05-15');

-- SELECT
-- Get all transactions.
SELECT * FROM Transactions;

-- Get all transactions that have not been returned yet.
SELECT * FROM Transactions WHERE return_date IS NULL;

-- Get all transactions ordered by borrow date.
SELECT * FROM Transactions ORDER BY borrow_date ASC;

-- UPDATE
-- Maria Santos just returned The Night We Met today (2026-05-26) — update transaction_id 1.
UPDATE Transactions SET return_date = '2026-05-26' WHERE transaction_id = 1;

-- Luna Cruz's return date was recorded incorrectly — update it to 2026-05-25 on transaction_id 3.
UPDATE Transactions SET return_date = '2026-05-25' WHERE transaction_id = 3;

-- James Reyes borrowed Our Perfect Storm again (book_id: 3) — update transaction_id 2.
UPDATE Transactions SET return_date = '2026-05-26' WHERE transaction_id = 2;

-- DELETE
-- The transaction record for James Reyes borrowing Yesteryear is a duplicate — remove transaction_id 2.
DELETE FROM Transactions WHERE transaction_id = 2;

-- Luna Cruz's transaction was recorded under the wrong account — delete transaction_id 3.
DELETE FROM Transactions WHERE transaction_id = 3;

-- Remove Maria Santos' transaction as the book record no longer exists — delete transaction_id 1.
DELETE FROM Transactions WHERE transaction_id = 1;