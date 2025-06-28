# 🚀 Complete Execution Guide for Exercise 1

## ✅ What's Been Set Up For You

I've automatically installed and configured everything you need:

### 📦 Extensions Installed:
- ✅ Oracle SQL Developer Extension (v23.4.1)
- ✅ SQL Server Extension (for better SQL support)

### 📁 Files Created:
- `setup_database.sql` - Database setup and sample data
- `exercise1.sql` - Your three PL/SQL scenarios
- `run_exercise.bat` - Windows batch file
- `run_exercise.ps1` - PowerShell script
- `.vscode/settings.json` - VS Code workspace settings
- `.vscode/tasks.json` - VS Code tasks
- `.vscode/keybindings.json` - Keyboard shortcuts

## 🎯 Multiple Ways to Execute

### Method 1: VS Code Tasks (Recommended)
1. **Open VS Code** in this folder
2. **Press `Ctrl+Shift+P`** → Type "Tasks: Run Task"
3. **Choose one:**
   - "Setup Database" (Ctrl+Shift+1)
   - "Run Exercise 1" (Ctrl+Shift+2)
   - "Run Both Scripts" (Ctrl+Shift+3)
4. **Enter your Oracle connection string** when prompted

### Method 2: PowerShell Script
```powershell
.\run_exercise.ps1 "username/password@database"
```

### Method 3: Batch File
```cmd
run_exercise.bat "username/password@database"
```

### Method 4: Direct SQL Commands
```bash
sql username/password@database @setup_database.sql
sql username/password@database @exercise1.sql
```

### Method 5: Oracle SQL Developer Extension
1. **Connect to database** via Command Palette
2. **Open SQL file** in VS Code
3. **Right-click** → "Run Script"

## 🔧 Connection String Format

Your Oracle connection string should be in this format:
```
username/password@host:port/service_name
```

**Examples:**
- `system/oracle@localhost:1521/XE`
- `hr/hr@192.168.1.100:1521/ORCL`
- `scott/tiger@localhost:1521/XE`

## 📊 Expected Output

After successful execution, you should see:

```
========================================
Exercise 1: Control Structures in PL/SQL
========================================

Step 1: Setting up database tables and sample data...
✓ Database setup completed successfully!

Step 2: Running PL/SQL scenarios...
Applied discount for customer ID: 1
Applied discount for customer ID: 3
Customer ID 1 promoted to VIP.
Customer ID 3 promoted to VIP.
Customer ID 4 promoted to VIP.
Reminder: Loan ID 101 for customer John Smith is due on 15-DEC-2024
Reminder: Loan ID 103 for customer Robert Brown is due on 10-DEC-2024
Reminder: Loan ID 105 for customer Michael Wilson is due on 25-DEC-2024
✓ PL/SQL scenarios completed successfully!

========================================
Exercise completed successfully!
========================================
```

## 🛠️ Troubleshooting

### Connection Issues:
- **"ORA-12541: TNS no listener"** → Check if Oracle database is running
- **"ORA-01017: invalid username/password"** → Verify credentials
- **"ORA-12514: TNS:listener does not currently know of service"** → Check service name

### Script Issues:
- **"table does not exist"** → Run setup script first
- **"no output visible"** → Check `SET SERVEROUTPUT ON;` is included
- **"permission denied"** → Ensure user has CREATE TABLE and INSERT privileges

### VS Code Issues:
- **Extension not working** → Restart VS Code
- **Tasks not found** → Reload window (Ctrl+Shift+P → "Developer: Reload Window")
- **No syntax highlighting** → Check file association in settings

## 🎨 VS Code Features Available

- **Syntax highlighting** for SQL/PL/SQL
- **Auto-formatting** on save
- **IntelliSense** for SQL keywords
- **Integrated terminal** for command execution
- **Task automation** with keyboard shortcuts
- **Error detection** before execution

## 📝 Quick Start Commands

```bash
# Test your connection
sql username/password@database

# Run everything at once
.\run_exercise.ps1 "username/password@database"

# Or use VS Code tasks
# Press Ctrl+Shift+3 to run both scripts
```

## 🎉 You're Ready!

Everything is set up and ready to go. Just choose your preferred method and run your PL/SQL exercises. The VS Code environment is optimized for Oracle development with all the tools you need! 