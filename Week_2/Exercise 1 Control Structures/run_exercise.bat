@echo off
echo ========================================
echo Exercise 1: Control Structures in PL/SQL
echo ========================================
echo.

echo Step 1: Setting up database tables and sample data...
echo.
sql %1 @setup_database.sql
echo.

echo Step 2: Running PL/SQL scenarios...
echo.
sql %1 @exercise1.sql
echo.

echo ========================================
echo Exercise completed!
echo ========================================
pause 