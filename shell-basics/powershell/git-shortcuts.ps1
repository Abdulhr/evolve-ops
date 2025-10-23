# Git workflow shortcuts for PowerShell

function Quick-Commit {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Message
    )

    git add .
    git commit -m $Message
    Write-Host "Changes committed: $Message" -ForegroundColor Green
}

function Quick-Push {
    param(
        [string]$Branch = "main"
    )

    $currentBranch = git branch --show-current
    git push origin $currentBranch
    Write-Host "Pushed to $currentBranch" -ForegroundColor Green
}

function Git-Sync {
    Write-Host "Pulling latest changes..." -ForegroundColor Cyan
    git pull
    Write-Host "Synced with remote!" -ForegroundColor Green
}

function Git-Undo {
    Write-Host "Undoing last commit (keeping changes)..." -ForegroundColor Yellow
    git reset --soft HEAD~1
}

# Example usage in your profile:
# Set-Alias -Name qc -Value Quick-Commit
# Set-Alias -Name qp -Value Quick-Push
# Set-Alias -Name sync -Value Git-Sync
# Set-Alias -Name undo -Value Git-Undo

Write-Host "Git shortcuts loaded: Quick-Commit, Quick-Push, Git-Sync, Git-Undo"
