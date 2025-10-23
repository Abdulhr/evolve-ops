# Simple PowerShell script example

param(
    [string]$Name = "World"
)

Write-Host "Hello, $Name!" -ForegroundColor Green
Write-Host "Today is $(Get-Date -Format 'dddd, MMMM dd, yyyy')"

# Get current directory
$currentDir = Get-Location
Write-Host "You are in: $currentDir"

# Count files in current directory
$fileCount = (Get-ChildItem -File).Count
Write-Host "This directory contains $fileCount files"
