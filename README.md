# Structured Query Language Practice

## What this folder is
This repository contains my advanced study about SQL and relational databases. It is a self-directed, structured phase of my roadmap before college. All queries, schema, and Python bridges are independently implemented.

## Topics Covered
- Core Queries: SELECT, WHERE, ORDER BY, GROUP BY, HAVING, Aggregates
- Joins and Relationships: INNER JOIN, LEFT JOIN, Foreign Keys
- Schema Design
- CRUD Operations: INSERT, SELECT, UPDATE, DELETE
- sqlite3 bridge

## How it is Organized
- Stored in a folder per topic. SQL files contain one-line comments above each statement explaining what it does and why. Python files contain comments on key methods only.

## Key Takeaways
- Data is intentionally split across tables to avoid redundancy - JOINS are how you reassemble and combine those data when you need to query across them. INNER JOIN gives you the rows where both sides match. LEFT JOIN keeps everything from left and fills NULL where the right has nothing.
- Schema Design should be first before writing queries - We decide what tables are created, what they store, and how they will reference each other. A junction table such as Transactions sits between two tables (Books and Accounts) and holds two foreign keys to both (book_id, and account_id). It is connecting them without duplicating data.
- Always target rows by primary key in UPDATE and DELETE - title or name can repeat, but primary keys never does. ONE missing WHERE clause will delete everything.
- The sqlite3 bridge is like Python speaking SQL - connect() opens the file, cursor() sends the commands, commit() saves the changes. The ? are placeholders which keeps the values safe. Functions make it reusable which is an essential core that Flask will require.
- NULL in SQL is equivalent to None in Python - We always check it with IS NULL. It is the absence of value, not a value itself.