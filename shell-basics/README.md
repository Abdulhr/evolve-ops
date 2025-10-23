# Shell Basics Tutorial

## What are Scripting Languages?

**Scripting languages** are programming languages designed for automating tasks, especially system administration and file operations. They are interpreted (run directly) rather than compiled.

### Scripting vs Programming Languages

| Scripting Languages | Traditional Programming Languages |
|---------------------|-----------------------------------|
| Interpreted (Python, Bash, PowerShell) | Compiled (C, Java, Go) |
| Focus on automation & glue code | Focus on building applications |
| Easier to learn, faster to write | More verbose, stricter syntax |
| Slower execution | Faster execution |
| Great for: admin tasks, quick scripts | Great for: large apps, performance-critical code |

**Note:** The line is blurry! Python is a scripting language but builds full applications. JavaScript started as a scripting language but now powers major frameworks.

## Shell Scripting

**Shells** (like Bash and PowerShell) are both:
1. Command-line interfaces for running commands
2. Scripting languages for automating tasks

### What Are Profiles?

**Profiles** are scripts that run automatically when you start a new shell session. Use them to:
- Set up aliases (shortcuts for commands)
- Define custom functions
- Configure environment variables
- Customize your prompt
- Auto-start programs or services

Think of profiles like your shell's startup config - like Windows startup programs, but for your terminal.

### When Profiles Run

- **Every new terminal window** you open
- **Every new tab** in your terminal
- **Each shell session** in VS Code or other editors

**Reloading without restarting:**
- PowerShell: `. $PROFILE`
- Bash: `source ~/.bashrc`

## Common Use Cases for Shell Scripts

1. **Automation:** Backup files, deploy code, run tests
2. **Git workflows:** Custom commit, push, branch operations
3. **File operations:** Batch rename, organize, compress
4. **System admin:** Monitor processes, clean temp files
5. **Development shortcuts:** Build, test, deploy commands

## Tutorials

### [PowerShell →](./powershell/README.md)
- Learn about PowerShell profiles
- Example scripts and functions
- Git shortcuts for Windows developers

### [Bash →](./bash/README.md)
- Learn about .bashrc and bash profiles
- Example scripts and functions
- Git shortcuts for Linux/macOS users

## Quick Start

### PowerShell (Windows)
```powershell
# Find your profile location
$PROFILE

# Create profile if it doesn't exist
New-Item -Path $PROFILE -Type File -Force

# Edit profile
code $PROFILE

# Copy example profile
Copy-Item .\powershell\example-profile.ps1 $PROFILE
```

### Bash (Linux/macOS)
```bash
# Find your .bashrc
ls -la ~/.bashrc

# Edit .bashrc
code ~/.bashrc

# Append example configuration
cat bash/example-bashrc >> ~/.bashrc

# Reload configuration
source ~/.bashrc
```

## Tips

1. **Start small:** Add a few aliases first, then expand
2. **Back up:** Copy your existing profile before major changes
3. **Comment your code:** Future you will thank you
4. **Test interactively:** Try commands in the terminal before adding to profile
5. **Keep it organized:** Group related functions and aliases together

## Further Learning

- **PowerShell:** `Get-Help about_Profiles`
- **Bash:** `man bash` (search for "INVOCATION")
- Practice writing small scripts to automate daily tasks
- Explore environment variables: `$env:` (PowerShell) or `env` (Bash)
