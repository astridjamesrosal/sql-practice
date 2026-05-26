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
-- Get All the Books
SELECT * FROM Books;

-- Get All the Books with the status of available
SELECT * FROM Books WHERE status = 'available';

-- Get only the title and author of All the Books ordered by Year
SELECT title, author FROM Books ORDER BY year ASC;

-- UPDATE
-- Update the status of the Yesteryear book to Available because it is now returned.
UPDATE Books
SET status = 'available'
WHERE book_id = 2;

-- Update the year of The Night We Met book to 2025 because we got it reprinted.
UPDATE Books
SET year = 2025
WHERE book_id = 1;

-- Update the status of Our Perfect Storm book to borrowed because it was now borrowed.
UPDATE Books
SET status = 'borrowed'
WHERE book_id = 3;