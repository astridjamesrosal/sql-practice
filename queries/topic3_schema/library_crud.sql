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
