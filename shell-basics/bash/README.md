# Bash Basics

## What is Bash?

Bash (Bourne Again Shell) is a Unix shell and scripting language. It's the default shell on most Linux distributions and macOS.

## Bash Configuration Files

Bash uses several configuration files that run at different times:

| File | When It Runs | Purpose |
|------|--------------|---------|
| `~/.bashrc` | Non-login interactive shells | Aliases, functions, shell options |
| `~/.bash_profile` | Login shells | Environment variables, runs once at login |
| `~/.profile` | Login shells (fallback) | Generic shell configuration |
| `~/.bash_aliases` | When sourced by .bashrc | Separate file for aliases |

### Most Common: .bashrc

For most daily use, you'll edit **`~/.bashrc`** - this runs every time you open a new terminal.

### Find Your .bashrc

```bash
ls -la ~/.bashrc
```

If it doesn't exist, create it:

```bash
touch ~/.bashrc
```

### Edit Your .bashrc

```bash
nano ~/.bashrc
# or
vim ~/.bashrc
# or
code ~/.bashrc
```

## Example .bashrc Configuration

Copy `example-bashrc` to your home directory:

```bash
# Backup existing .bashrc
cp ~/.bashrc ~/.bashrc.backup

# Append example to your .bashrc
cat example-bashrc >> ~/.bashrc

# Or replace entirely
cp example-bashrc ~/.bashrc
```

## Example Scripts

- **hello.sh** - Basic script with parameters
- **git-shortcuts.sh** - Git workflow functions

### Running Scripts

```bash
# Make script executable
chmod +x hello.sh

# Run the script
./hello.sh

# With parameters
./hello.sh Alice
```

## When .bashrc Runs

- Every time you open a new terminal window
- Each new terminal tab
- When you run `bash` to start a new shell

## Reload .bashrc Without Restarting

```bash
source ~/.bashrc
# or
. ~/.bashrc
```

## Login vs Non-Login Shells

- **Login shell:** First shell after login (uses .bash_profile)
- **Non-login shell:** Every other terminal (uses .bashrc)

**Best practice:** Put most customizations in `.bashrc`, and have `.bash_profile` source it:

```bash
# In ~/.bash_profile
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
```
