# PowerShell Profile Example
# Copy this to your profile: Copy-Item .\example-profile.ps1 $PROFILE

# Welcome message
Write-Host "Welcome to PowerShell, $env:USERNAME!" -ForegroundColor Cyan

# Useful aliases
Set-Alias -Name ll -Value Get-ChildItem
Set-Alias -Name g -Value git

# Custom functions
function prompt {
    $path = (Get-Location).Path.Replace($HOME, "~")
    "PS $path> "
}

function Open-Profile {
    code $PROFILE
}
Set-Alias -Name editprofile -Value Open-Profile

function Reload-Profile {
    . $PROFILE
    Write-Host "Profile reloaded!" -ForegroundColor Green
}
Set-Alias -Name reload -Value Reload-Profile

# Git shortcuts
function Git-Status { git status }
Set-Alias -Name gs -Value Git-Status

function Git-Add { git add . }
Set-Alias -Name ga -Value Git-Add

function Git-Commit { param($message) git commit -m $message }
Set-Alias -Name gc -Value Git-Commit

# Navigation shortcuts
function Go-Home { Set-Location $HOME }
Set-Alias -Name home -Value Go-Home

function Go-Back { Set-Location .. }
Set-Alias -Name .. -Value Go-Back

# Utility functions
function Get-PublicIP {
    (Invoke-WebRequest -Uri "https://api.ipify.org").Content
}

function Find-File {
    param([string]$name)
    Get-ChildItem -Recurse -Filter $name -ErrorAction SilentlyContinue
}

Write-Host "Custom aliases loaded: ll, g, gs, ga, gc, .., home" -ForegroundColor Yellow
