# Git Basics: Branch & PR Workflow

## Overview

This guide covers the standard workflow for contributing code using Git and GitHub:
1. Create an issue on GitHub
2. Create a branch following naming conventions
3. Make your changes and commit
4. Push and create a Pull Request (PR)

## Prerequisites

- Git installed locally
- GitHub account with repository access
- Git configured with your identity:
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "your.email@example.com"
  ```

## Workflow Steps

### Step 1: Create a GitHub Issue

**Every PR must have an associated issue.** Issues track what needs to be done and provide context.

#### Creating an Issue on GitHub

1. Go to your repository on GitHub
2. Click the **Issues** tab
3. Click **New Issue**
4. Fill in:
   - **Title:** Clear, concise description (e.g., "Add user authentication")
   - **Description:** Details about what needs to be done, why, and any context
   - **Labels:** bug, feature, enhancement, documentation, etc.
   - **Assignees:** Assign yourself if you'll work on it
5. Click **Submit new issue**
6. **Note the issue number** (e.g., #42) - you'll need this for your branch name

#### Using GitHub CLI (Alternative)

```bash
# Create an issue from command line
gh issue create --title "Add user authentication" --body "Need to implement JWT authentication"

# List issues
gh issue list

# View issue details
gh issue view 42
```

### Step 2: Create a Branch

**Branch Naming Convention:**

```
repo-issue-[description]
```

**Format:**
- `repo` - Short repository name or project identifier
- `issue` - The GitHub issue number
- `[description]` - Brief description using kebab-case

**Examples:**
- `evolve-42-add-authentication`
- `webapp-15-fix-login-bug`
- `api-8-update-user-endpoint`

**Why this convention?**
- Easy to trace branch back to issue
- Clear what the branch is for
- Consistent across team

#### Creating the Branch

```bash
# Make sure you're on the main branch
git checkout main

# Pull latest changes
git pull origin main

# Create and switch to new branch
git checkout -b repo-issue-description

# Example:
git checkout -b evolve-42-add-authentication
```

### Step 3: Make Changes and Commit

```bash
# Check what files changed
git status

# Add files to staging
git add .

# Or add specific files
git add src/auth.js

# Commit with meaningful message
git commit -m "Add JWT authentication middleware"

# Make more commits as needed
git commit -m "Add authentication tests"
```

**Commit Message Tips:**
- Use present tense ("Add feature" not "Added feature")
- Be descriptive but concise
- Reference issue number if relevant: "Fix login bug (#15)"

### Step 4: Push Branch to GitHub

```bash
# First time pushing this branch
git push -u origin repo-issue-description

# Example:
git push -u origin evolve-42-add-authentication

# Subsequent pushes (after -u flag used once)
git push
```

### Step 5: Create a Pull Request

**PR Naming Convention:**

```
[Type] Brief description (Fixes #issue-number)
```

**Types:**
- `[Feature]` - New functionality
- `[Fix]` - Bug fix
- `[Enhancement]` - Improvement to existing feature
- `[Docs]` - Documentation changes
- `[Refactor]` - Code restructuring without changing behavior

**Examples:**
- `[Feature] Add JWT authentication (Fixes #42)`
- `[Fix] Resolve login redirect issue (Fixes #15)`
- `[Enhancement] Improve user profile validation (Fixes #8)`

#### Creating PR on GitHub

1. Push your branch (see Step 4)
2. Go to your repository on GitHub
3. You'll see a banner: "Compare & pull request" - click it
   - Or click **Pull requests** tab → **New pull request**
4. Fill in the PR:
   - **Title:** Use convention above
   - **Description:** Include:
     - Summary of changes
     - Link to issue: "Fixes #42" or "Closes #42"
     - Testing done
     - Screenshots (if UI changes)
5. **Link the issue:** Use "Fixes #42" in description to auto-close issue when PR merges
6. Request reviewers if needed
7. Click **Create pull request**

#### Creating PR with GitHub CLI

```bash
# Create PR from current branch
gh pr create --title "[Feature] Add authentication (Fixes #42)" --body "Implements JWT authentication. Fixes #42"

# Interactive PR creation
gh pr create

# Create PR and open in browser
gh pr create --web
```

## Complete Example Workflow

```bash
# 1. Create issue on GitHub first (let's say it's issue #42)

# 2. Create branch
git checkout main
git pull origin main
git checkout -b evolve-42-add-authentication

# 3. Make changes
# ... edit files ...

# 4. Commit changes
git add .
git commit -m "Add JWT authentication middleware"

# 5. Push branch
git push -u origin evolve-42-add-authentication

# 6. Create PR on GitHub with title:
#    [Feature] Add JWT authentication (Fixes #42)
```

## Quick Reference

### Essential Git Commands

```bash
# Check status
git status

# Create and switch to branch
git checkout -b branch-name

# Add files
git add .

# Commit
git commit -m "Message"

# Push
git push -u origin branch-name

# Pull latest from main
git pull origin main

# Switch branches
git checkout branch-name

# List branches
git branch

# Delete local branch
git branch -d branch-name
```

### GitHub CLI Commands

```bash
# Create issue
gh issue create

# Create PR
gh pr create

# List PRs
gh pr list

# View PR
gh pr view 42

# Check out PR locally
gh pr checkout 42
```

## Best Practices

1. **Always create an issue first** - Never create a PR without an issue
2. **One issue = One branch** - Keep work focused
3. **Keep branches short-lived** - Merge frequently to avoid conflicts
4. **Pull before you push** - Stay up to date with main branch
5. **Write clear commit messages** - Future you will thank you
6. **Link PRs to issues** - Use "Fixes #42" in PR description
7. **Review your own PR first** - Check the diff before requesting review
8. **Delete branches after merge** - Keep repository clean

## Troubleshooting

### Branch name doesn't follow convention
```bash
# Rename branch locally
git branch -m old-name new-correct-name

# Delete old branch on remote
git push origin --delete old-name

# Push new branch
git push -u origin new-correct-name
```

### Forgot to link issue in PR
- Edit the PR description on GitHub
- Add "Fixes #issue-number" to the description

### Need to update branch with latest main
```bash
git checkout main
git pull origin main
git checkout your-branch
git merge main
# Resolve conflicts if any
git push
```
