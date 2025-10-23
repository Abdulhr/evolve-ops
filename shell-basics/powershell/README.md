# PowerShell Basics

## What is PowerShell?

PowerShell is a scripting language and command-line shell built by Microsoft. It works on Windows, macOS, and Linux.

## PowerShell Profile

A **profile** is a script that runs automatically every time you open PowerShell. Use it to customize your environment with aliases, functions, and settings.

### Profile Locations

| Profile Type | Path |
|--------------|------|
| Current User, Current Host | `$PROFILE` or `$PROFILE.CurrentUserCurrentHost` |
| Current User, All Hosts | `$PROFILE.CurrentUserAllHosts` |
| All Users, Current Host | `$PROFILE.AllUsersCurrentHost` |
| All Users, All Hosts | `$PROFILE.AllUsersAllHosts` |

### Find Your Profile Path

```powershell
$PROFILE
```

Most commonly you'll use the current user profile at:
- **Windows:** `C:\Users\YourName\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`
- **Linux/macOS:** `~/.config/powershell/Microsoft.PowerShell_profile.ps1`

### Check if Profile Exists

```powershell
Test-Path $PROFILE
```

### Create Your Profile

```powershell
New-Item -Path $PROFILE -Type File -Force
```

### Edit Your Profile

```powershell
notepad $PROFILE
# or
code $PROFILE
```

## Example Profile Script

Copy `example-profile.ps1` to your profile location and customize it.

```powershell
# Copy to your profile
Copy-Item .\example-profile.ps1 $PROFILE
```

## Example Scripts

- **hello.ps1** - Basic script with parameters
- **git-shortcuts.ps1** - Useful git aliases

### Running Scripts

```powershell
# Run a script
.\hello.ps1

# With parameters
.\hello.ps1 -Name "Alice"
```

**Note:** You may need to allow script execution:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## When Profile Runs

- Every time you open a new PowerShell window
- Each new terminal tab in VS Code
- When you run `pwsh` or `powershell`

## Reload Profile Without Restarting

```powershell
. $PROFILE
```
