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