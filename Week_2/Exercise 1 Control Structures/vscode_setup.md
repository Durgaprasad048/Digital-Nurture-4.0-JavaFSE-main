# Using Oracle SQL Developer Extension in VS Code

## Installation and Setup

### 1. Install the Extension
1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X)
3. Search for "Oracle SQL Developer"
4. Install the official Oracle extension
- Try reconnecting to the database

## Tips for VS Code

1. **Syntax Highlighting:** The extension provides SQL/PL/SQL syntax highlighting
2. **IntelliSense:** Get code completion for SQL keywords and table names
3. **Error Detection:** See syntax errors before running
4. **Multiple Connections:** Connect to different databases simultaneously
5. **Query Results:** View results in a formatted table

## Keyboard Shortcuts

- **Ctrl+Shift+E:** Run current script
- **Ctrl+Shift+P:** Open command palette
- **Ctrl+Shift+X:** Open extensions
- **Ctrl+`:** Open terminal 

### 2. Configure Database Connection
1. Open Command Palette (Ctrl+Shift+P)
2. Type "Oracle: Connect to Database"
3. Enter your connection details:
   - **Host:** Your Oracle server address
   - **Port:** Usually 1521
   - **Service Name:** Your database service name
   - **Username:** Your Oracle username
   - **Password:** Your Oracle password

### 3. Test Connection
- The extension will show your connection in the Oracle Explorer panel
- You should see your database listed with schemas

## Running Your PL/SQL Scripts

### Step 1: Run Setup Script
1. Open `setup_database.sql` in VS Code
2. Right-click in the editor
3. Select "Run Script" or press Ctrl+Shift+E
4. This creates your tables and sample data

### Step 2: Run Exercise Script
1. Open `exercise1.sql` in VS Code
2. Right-click in the editor
3. Select "Run Script" or press Ctrl+Shift+E
4. Watch the output in the Oracle Output panel

## Alternative Methods

### Method 1: Using Command Palette
1. Open your SQL file
2. Press Ctrl+Shift+P
3. Type "Oracle: Run Script"
4. Press Enter

### Method 2: Using Oracle Explorer
1. Right-click on your connection in Oracle Explorer
2. Select "New SQL Worksheet"
3. Copy and paste your script
4. Click the Run button

### Method 3: Using Terminal
1. Open VS Code terminal (Ctrl+`)
2. Navigate to your workspace
3. Run:
   ```bash
   sql username/password@database @setup_database.sql
   sql username/password@database @exercise1.sql
   ```

## Expected Output in VS Code

You should see output like this in the Oracle Output panel:

```
Connected to Oracle Database 19c Enterprise Edition Release 19.0.0.0.0
Connected as: YOUR_USERNAME

Table CUSTOMERS created.
Table LOANS created.
5 rows inserted.
5 rows inserted.
Commit complete.

PL/SQL procedure successfully completed.
Applied discount for customer ID: 1
Applied discount for customer ID: 3

PL/SQL procedure successfully completed.
Customer ID 1 promoted to VIP.
Customer ID 3 promoted to VIP.
Customer ID 4 promoted to VIP.

PL/SQL procedure successfully completed.
Reminder: Loan ID 101 for customer John Smith is due on 15-DEC-2024
Reminder: Loan ID 103 for customer Robert Brown is due on 10-DEC-2024
Reminder: Loan ID 105 for customer Michael Wilson is due on 25-DEC-2024
```

## Troubleshooting

### Connection Issues
- Check your Oracle database is running
- Verify connection details (host, port, service name)
- Ensure your user has proper permissions

### Script Execution Issues
- Make sure you're connected to the database
- Check that `SET SERVEROUTPUT ON;` is included
- Verify table names match your database schema

### Extension Not Working
- Restart VS Code after installation
- Check the Oracle Output panel for error messages