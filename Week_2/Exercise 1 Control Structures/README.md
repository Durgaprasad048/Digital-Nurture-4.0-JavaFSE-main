# Exercise 1: Control Structures in PL/SQL

This exercise contains three PL/SQL scenarios demonstrating control structures and loops.

## Files Included:
- `setup_database.sql` - Creates tables and sample data
- `exercise1.sql` - Contains the three PL/SQL scenarios
- `README.md` - This execution guide

## How to Execute:

### Option 1: Using Oracle SQL Developer (Recommended for Windows)

1. **Open Oracle SQL Developer**
2. **Connect to your database**
3. **Run the setup script first:**
   - Open `setup_database.sql`
   - Click the "Run Script" button (F5)
   - This creates the tables and sample data

4. **Run the exercise script:**
   - Open `exercise1.sql`
   - Click the "Run Script" button (F5)
   - You'll see output for each scenario

### Option 2: Using SQL*Plus (Command Line)

1. **Open Command Prompt**
2. **Connect to Oracle:**
   ```bash
   sqlplus username/password@database
   ```

3. **Run setup:**
   ```sql
   @setup_database.sql
   ```

4. **Run exercise:**
   ```sql
   @exercise1.sql
   ```

### Option 3: Using SQLcl (Modern Command Line)

1. **Open Command Prompt**
2. **Connect to Oracle:**
   ```bash
   sql username/password@database
   ```

3. **Run both scripts:**
   ```sql
   @setup_database.sql
   @exercise1.sql
   ```

## Expected Output:

After running `exercise1.sql`, you should see:

**Scenario 1 Output:**
```
Applied discount for customer ID: 1
Applied discount for customer ID: 3
```

**Scenario 2 Output:**
```
Customer ID 1 promoted to VIP.
Customer ID 3 promoted to VIP.
Customer ID 4 promoted to VIP.
```

**Scenario 3 Output:**
```
Reminder: Loan ID 101 for customer John Smith is due on [date]
Reminder: Loan ID 103 for customer Robert Brown is due on [date]
Reminder: Loan ID 105 for customer Michael Wilson is due on [date]
```

## Troubleshooting:

- **If you get "table does not exist" errors:** Run `setup_database.sql` first
- **If you don't see output:** Make sure `SET SERVEROUTPUT ON;` is executed
- **If you get connection errors:** Check your Oracle database connection details

## Notes:
- The sample data includes customers of various ages and balances
- Some loans are due within 30 days to demonstrate Scenario 3
- All changes are committed automatically in the PL/SQL blocks 