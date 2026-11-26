# Week 8 Assignment: MySQL Database Backup and Restore

## Overview
This repository contains solutions for **Week 8: MySQL Database Backup and Restore**. The assignment demonstrates how to use the `mysqldump` command-line utility to perform logical backups of MySQL databases for disaster recovery, schema change safety, and server migrations.

## Repository Structure
* `answer.sql` — Contains the `mysqldump` commands and detailed explanations for the assignment questions.
* `README.md` — Documentation summarizing the backup operations and usage instructions.

## Backup Commands Summary

### 1. Complete Single-Database Backup (`sales`)
```bash
mysqldump -u root -p sales > sales_backup.sql
```
* **Purpose:** Exports both the schema (`CREATE TABLE`) and data (`INSERT INTO`) for the `sales` database into `sales_backup.sql` before applying major schema changes.

### 2. Full Server Backup (All Databases)
```bash
mysqldump -u root -p --all-databases > all_databases_backup.sql
```
* **Purpose:** Exports every user and system database on the MySQL server instance (including user accounts and privileges) into `all_databases_backup.sql` ahead of a server migration.

## How to Run
1. Open your system terminal (Command Prompt, PowerShell, Bash, or Zsh).
2. Ensure `mysqldump` is available in your system `PATH` (or navigate to your MySQL `bin` directory).
3. Run the desired `mysqldump` command from `answer.sql` and enter your MySQL `root` password when prompted.
4. Verify that the `.sql` backup file is created in your current working directory.
