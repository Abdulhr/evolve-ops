# Git Quick Reference

## Naming Conventions

### Branch Names
```
repo-issue-[description]
```
**Examples:**
- `evolve-42-add-authentication`
- `webapp-15-fix-login-bug`
- `api-8-update-user-endpoint`

### PR Titles
```
[Type] Brief description (Fixes #issue-number)
```
**Types:** `[Feature]` `[Fix]` `[Enhancement]` `[Docs]` `[Refactor]`

**Examples:**
- `[Feature] Add JWT authentication (Fixes #42)`
- `[Fix] Resolve login redirect issue (Fixes #15)`
- `[Enhancement] Improve user profile validation (Fixes #8)`

## Workflow Checklist

- [ ] Create GitHub issue and note the issue number
- [ ] Create branch: `git checkout -b repo-issue-description`
- [ ] Make changes and commit regularly
- [ ] Push branch: `git push -u origin repo-issue-description`
- [ ] Create PR with proper title format
- [ ] Link issue in PR description: "Fixes #42"
- [ ] Request review if needed
- [ ] Merge PR after approval
- [ ] Delete branch after merge

## Essential Commands

```bash
# Start work
git checkout main
git pull origin main
git checkout -b repo-issue-description

# Make changes
git status
git add .
git commit -m "Your message"

# Push and create PR
git push -u origin repo-issue-description
# Then create PR on GitHub

# Update branch with latest main
git checkout main
git pull origin main
git checkout your-branch
git merge main
git push
```

## GitHub CLI Quick Commands

```bash
# Create issue
gh issue create --title "Title" --body "Description"

# Create PR
gh pr create --title "[Feature] Title (Fixes #42)" --body "Description"

# View PR
gh pr view 42

# Merge PR
gh pr merge 42
```
