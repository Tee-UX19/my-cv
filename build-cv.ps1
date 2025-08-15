# PowerShell script to compile LaTeX CV
# Usage: .\build-cv.ps1 [cv-name]

param(
    [string]$CVName = "Timothy-Joseph CV"
)

Write-Host "Building CV: $CVName.tex" -ForegroundColor Green

# Check if LaTeX is installed
try {
    $pdflatexVersion = pdflatex --version 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "pdflatex not found"
    }
} catch {
    Write-Host "Error: pdflatex not found. Please install a LaTeX distribution:" -ForegroundColor Red
    Write-Host "  - Windows: MiKTeX (https://miktex.org/) or TeX Live" -ForegroundColor Yellow
    Write-Host "  - Make sure pdflatex is in your PATH" -ForegroundColor Yellow
    exit 1
}

# Check if tex file exists
if (-not (Test-Path "$CVName.tex")) {
    Write-Host "Error: $CVName.tex not found!" -ForegroundColor Red
    Write-Host "Available CV files:" -ForegroundColor Yellow
    Get-ChildItem -Name "*.tex"
    exit 1
}

# Compile the CV
Write-Host "Compiling $CVName.tex..." -ForegroundColor Blue

try {
    $output = pdflatex -synctex=1 -interaction=nonstopmode -file-line-error "$CVName.tex" 2>&1
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "CV compiled successfully!" -ForegroundColor Green
        Write-Host "Output: $CVName.pdf" -ForegroundColor Cyan
        
        # Open the PDF if it exists
        if (Test-Path "$CVName.pdf") {
            Write-Host "Opening PDF..." -ForegroundColor Blue
            Start-Process "$CVName.pdf"
        }
    } else {
        Write-Host "Compilation failed!" -ForegroundColor Red
        Write-Host "LaTeX output:" -ForegroundColor Yellow
        Write-Host $output
    }
} catch {
    Write-Host "Error during compilation: $($_.Exception.Message)" -ForegroundColor Red
}

# Clean up auxiliary files
Write-Host "Cleaning auxiliary files..." -ForegroundColor Blue
$auxFiles = @("*.aux", "*.log", "*.out", "*.synctex.gz", "*.fls", "*.fdb_latexmk")

foreach ($pattern in $auxFiles) {
    $files = Get-ChildItem -Name $pattern -ErrorAction SilentlyContinue
    if ($files) {
        Remove-Item $files -Force
        Write-Host "Removed: $($files -join ', ')" -ForegroundColor Gray
    }
}

Write-Host "Build process completed!" -ForegroundColor Green
