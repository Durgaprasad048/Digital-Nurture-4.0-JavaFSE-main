param(
    [Parameter(Mandatory = $true)]
    [string]$ConnectionString
)

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Exercise 1: Control Structures in PL/SQL" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Step 1: Setting up database tables and sample data..." -ForegroundColor Yellow
Write-Host ""
try {
    sql $ConnectionString "@setup_database.sql"
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ Database setup completed successfully!" -ForegroundColor Green
    }
    else {
        Write-Host "✗ Database setup failed!" -ForegroundColor Red
        exit 1
    }
}
catch {
    Write-Host "✗ Error during database setup: $_" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Step 2: Running PL/SQL scenarios..." -ForegroundColor Yellow
Write-Host ""
try {
    sql $ConnectionString "@exercise1.sql"
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ PL/SQL scenarios completed successfully!" -ForegroundColor Green
    }
    else {
        Write-Host "✗ PL/SQL scenarios failed!" -ForegroundColor Red
        exit 1
    }
}
catch {
    Write-Host "✗ Error during PL/SQL execution: $_" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Exercise completed successfully!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan 