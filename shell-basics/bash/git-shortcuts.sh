#!/bin/bash
# Git workflow shortcuts for Bash

# Quick commit function
qc() {
    if [ -z "$1" ]; then
        echo "Usage: qc \"commit message\""
        return 1
    fi

    git add .
    git commit -m "$1"
    echo "Changes committed: $1"
}

# Quick push function
qp() {
    BRANCH=$(git branch --show-current)
    git push origin "$BRANCH"
    echo "Pushed to $BRANCH"
}

# Sync with remote
sync() {
    echo "Pulling latest changes..."
    git pull
    echo "Synced with remote!"
}

# Undo last commit (keep changes)
undo() {
    echo "Undoing last commit (keeping changes)..."
    git reset --soft HEAD~1
}

# Create new branch and switch to it
newbranch() {
    if [ -z "$1" ]; then
        echo "Usage: newbranch <branch-name>"
        return 1
    fi

    git checkout -b "$1"
    echo "Created and switched to branch: $1"
}

# Show git log prettily
gitlog() {
    git log --oneline --graph --decorate --all
}

# To use these functions, add to your .bashrc:
# source /path/to/git-shortcuts.sh

echo "Git shortcuts loaded: qc, qp, sync, undo, newbranch, gitlog"
