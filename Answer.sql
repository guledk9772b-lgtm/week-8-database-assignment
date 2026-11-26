-- ============================================================================
-- Week 8 Assignment: MySQL Database Backup and Restore
-- ============================================================================

-- ============================================================================
-- Question 1: Creating a Complete Database Backup
-- ============================================================================
-- Command:
mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- 1. What the command does:
--    - 'mysqldump' invokes the MySQL logical backup utility.
--    - '-u root' specifies logging in as the 'root' MySQL user.
--    - '-p' prompts the administrator to enter the password securely in the terminal.
--    - 'sales' specifies the exact database to export (both table structures/DDL and data/DML).
--    - '> sales_backup.sql' redirects the generated SQL output into a file named 'sales_backup.sql'.
--
-- 2. Why regular database backups are important:
--    - Regular backups protect critical business data against accidental deletion,
--      failed schema changes/migrations, software bugs, ransomware, and hardware failure.
--    - They enable point-in-time disaster recovery (minimizing downtime and data loss)
--      and help organizations meet data retention and compliance requirements.


-- ============================================================================
-- Question 2: Backing Up All Databases
-- ============================================================================
-- Command:
mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- 1. What the command does:
--    - '--all-databases' (shorthand '-A') instructs mysqldump to export every
--      database hosted on the MySQL server instance, including 'CREATE DATABASE'
--      and 'USE' statements, into 'all_databases_backup.sql'.
--
-- 2. Why backing up all databases is important before a server migration:
--    - Ensures complete data portability so no user-created application databases
--      are accidentally left behind during the move.
--    - Captures system schemas (such as the 'mysql' database) that store user
--      accounts, passwords, roles, privileges, stored routines, and server configurations.
--    - Provides a full rollback safety net in case the migration encounters
--      compatibility issues, network interruptions, or data corruption.
