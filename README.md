# MySQL Concepts with Examples

This repository provides a structured and practical collection of SQL scripts to help learners and professionals understand core MySQL concepts through hands-on examples. Each SQL file corresponds to a specific topic, making it easy to explore and test various commands.

---

## 📁 Repository Structure & Topics Covered

### 🧱 1. Data Definition Language (DDL)

These scripts define and modify the structure of database objects like tables.

- `createDbTable.sql`: Creating databases and tables using `CREATE DATABASE`, `CREATE TABLE`.
- `AlterTable.sql`: Modifying table schema using `ALTER TABLE` (add, drop, modify columns).
- `DropTruncate.sql`: Removing tables or clearing data using `DROP` and `TRUNCATE`.

---

### ✍️ 2. Data Manipulation Language (DML)

Used for manipulating data within tables.

- `InsertStatements.sql`: Adding new records with `INSERT INTO`.
- `SelectStatements.sql`: Retrieving data using `SELECT`.
- `UpdateStatement.sql`: Modifying existing records with `UPDATE`.
- `DeleteStatement.sql`: Removing records using `DELETE`.

---

### 📌 3. SQL Clauses

Filtering, grouping, and ordering data effectively.

- `Clauses.sql`: Demonstrates the use of:
  - `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT` etc.

---
### 🔀 4. Joins

Combining data from multiple tables.

- `CreatingTables.sql`, `Joins.sql`: Demonstrates all major join types:
  - `INNER JOIN`
  - `LEFT JOIN`
  - `LEFT OUTER JOIN`
  - `RIGHT JOIN`
  - `RIGHT OUTER JOIN`
  - `FULL JOIN` (simulated using `UNION`)
  - `CROSS JOIN`
  - `SELF JOIN`
  

---

### 🔎 5. Subqueries

Using queries inside other queries for advanced logic.

- `ColumnSubQuery.sql`: Subquery returning a single column.
- `ScalarSubQuery.sql`: Subquery returning a single value.
- `RowSubQuery.sql`: Subquery returning an entire row.
- `TableSubquery.sql`: Subquery as a derived table.
- `CorrelatedSubQuery.sql`: Subquery that references the outer query.
- `CreateTable.sql`: Supporting script for subquery-based examples.

---
### ⚙️ 6. Stored Procedures

Reusable logic in the database.

- `WithoutParameter.sql`: Stored procedure without parameters.
- `WithInputParameter.sql`: Procedure with input parameters.
- `WithOutputParameter.sql`: Procedure returning output via `OUT` parameters.

---

### 🔁 7. Triggers

Automatic execution of SQL logic in response to events.

- `CreatingAuditTable.sql`: Sets up audit log table.
- `AuditTrigger.sql`: `AFTER INSERT` and `AFTER UPDATE` triggers to log changes.

---

### 🔄 8. Transaction Control Language (TCL)

Managing transaction integrity.

- `TCLCommands.sql`: Shows usage of:
  - `COMMIT`
  - `ROLLBACK`
  - `SAVEPOINT`

---

### 📚 9. Indexing

Improving performance of queries.

- `Index.sql`: Creating basic indexes with `CREATE INDEX`.

---

### 👁️ 10. Views

Creating virtual tables for complex queries.

- `CreatingView.sql`: Defines views using `CREATE VIEW`.
- `WithoutView.sql`: Compares direct queries vs view-based queries.

---

## 🧠 Who This Repo Is For

- MySQL Beginners and Students  
- Backend Developers and DB Engineers  
- Interview Prep on SQL Concepts  
- Educators teaching relational databases  

---

## ▶️ How to Run

1. **Clone the repo**  
   ```bash
   https://github.com/Hariharan1893/mysql.git

- Open your MySQL client
- Use MySQL Workbench, DBeaver, CLI, or any compatible GUI.

- Run .sql files topic by topic
- Execute files in the order listed above to follow a progressive learning path.

## ⚙️ Requirements
MySQL Server (version 8.0+ recommended)

Any SQL-compatible client (Workbench, DBeaver, HeidiSQL, etc.)

## 🙌 Contributing
Pull requests (PRs) to fix issues, improve explanations, or add examples for advanced SQL topics (e.g., CTEs, JSON functions, Window functions) are welcome!