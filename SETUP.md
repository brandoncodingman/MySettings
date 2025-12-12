# VS Code Setup

This repository contains my VS Code extensions and settings for easy setup on new computers.

## Quick Start - Setup on a New Computer

### Step 1: Clone This Repository

Open Terminal/PowerShell and run:

```bash
git clone https://github.com/brandoncodingman/MySettings.git
cd MySettings
```

### Step 2: Install All Extensions Automatically

**On Windows (PowerShell or Git Bash):**
```bash
cat vscode-extensions.txt | ForEach-Object { code --install-extension $_ }
```

**On Windows (Command Prompt):**
```cmd
for /F %i in (vscode-extensions.txt) do code --install-extension %i
```

**On Mac/Linux:**
```bash
cat vscode-extensions.txt | xargs -L 1 code --install-extension
```

### Step 3: Apply Settings

**Option A: Copy Settings Manually**

1. Open the `.vscode-settings.json` file from this repository
2. Copy all the contents
3. Open your VS Code settings file:
   - Windows: Press `Win+R`, type `%APPDATA%\Code\User\settings.json`, press Enter
   - Mac: `~/Library/Application Support/Code/User/settings.json`
   - Linux: `~/.config/Code/User/settings.json`
4. Paste the contents (replace everything or merge with existing settings)
5. Save the file

**Option B: Use a Script (Windows)**

Create a file called `apply-settings.bat`:
```cmd
@echo off
copy .vscode-settings.json "%APPDATA%\Code\User\settings.json"
echo Settings applied successfully!
pause
```

Run it to automatically copy settings.

### Step 4: Restart VS Code

Close and reopen VS Code to see all your extensions and settings applied!

---

## Manual Installation (Alternative Method)

If the automatic installation doesn't work, you can install extensions manually:

1. Open VS Code
2. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
3. Type "Extensions: Install Extensions"
4. Search for each extension listed in `vscode-extensions.txt` and install them

## Installed Extensions (24 total)

- **Better Comments** - Improve your code comments
- **Claude Code** - AI coding assistant
- **GitLens** - Enhanced Git capabilities
- **Live Server** - Launch local development server
- **Auto Rename Tag** - Auto rename paired HTML/XML tags
- **Code Runner** - Run code snippets
- **Draw.io Integration** - Create diagrams
- **Power Mode** - Visual effects while typing
- **Rainbow CSV** - Colorize CSV files
- **Color Highlight** - Highlight colors in code
- **Markdown Tools** - Enhanced markdown editing
- **Python Extensions** - Full Python development support
- **Themes** - Catppuccin, Dracula, Doki Theme, and more

## Alternative: Use VS Code Settings Sync

Instead of using this repository, you can use VS Code's built-in Settings Sync:

1. In VS Code, press `Ctrl+Shift+P`
2. Type "Settings Sync: Turn On"
3. Sign in with GitHub or Microsoft account
4. Your settings and extensions will sync automatically across all computers

This repository is useful as a backup or for sharing specific configurations.

## Files in this Repository

- `vscode-extensions.txt` - List of all 24 installed VS Code extensions
- `.vscode-settings.json` - VS Code user settings and preferences
- `SETUP.md` - This file with complete installation instructions

## Updating This Repository

When you install new extensions or change settings on your main computer:

1. Export extensions: `code --list-extensions > vscode-extensions.txt`
2. Copy settings: `cp "$APPDATA/Code/User/settings.json" .vscode-settings.json` (Windows)
3. Commit and push:
   ```bash
   git add vscode-extensions.txt .vscode-settings.json
   git commit -m "Update extensions and settings"
   git push
   ```
