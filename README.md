# Evolve-Ops
**Tagline:** _Build. Ship. Repeat._

**Focus:** Baseline CI/CD, Docker examples, and shell scripting tutorials for Evolve training.

## Contents

### DevOps Templates
- `docker/` — sample Dockerfiles for Node (Next.js) and Python
- `.github/workflows/` — minimal GitHub Actions for Node & Python

### Tutorials
- `git-basics/` — Git workflow with branch and PR naming conventions
- `shell-basics/` — learn PowerShell and Bash fundamentals

## What Are Scripting Languages?

Scripting languages (like Bash, PowerShell, Python) are interpreted languages designed for automation. Unlike compiled languages (C, Java), they run directly without a build step, making them perfect for:
- Automating repetitive tasks
- System administration
- Quick prototypes and glue code
- File and text processing

**Key difference:** Scripting languages prioritize ease of use and fast development over raw performance.

## What Are Shell Profiles?

**Profiles** are scripts that run automatically when you open a terminal. They let you:
- Create command shortcuts (aliases)
- Define custom functions
- Set environment variables
- Customize your terminal prompt

**When they run:**
- Every new terminal window or tab
- Each shell session in VS Code
- Whenever you start your shell (PowerShell, Bash, etc.)

## Usage

### DevOps Templates
Copy the relevant Dockerfile and workflow into your target repo and tweak as needed.

### Git Basics
Start with [git-basics/README.md](./git-basics/README.md) to learn:
- How to create GitHub issues before starting work
- Branch naming convention: `repo-issue-[description]`
- PR naming convention: `[Type] Description (Fixes #issue)`
- Complete workflow from issue to merged PR

### Shell Tutorials
Start with [shell-basics/README.md](./shell-basics/README.md) to learn:
- PowerShell profiles and scripting (Windows)
- Bash .bashrc and scripting (Linux/macOS)
- When and how to use profiles
- Practical examples and git shortcuts
