@echo off
echo ========================================
echo Updating VS Code Settings to GitHub
echo ========================================
echo.

echo [1/4] Exporting extensions list...
code --list-extensions > vscode-extensions.txt

echo [2/4] Copying settings file...
copy "%APPDATA%\Code\User\settings.json" .vscode-settings.json

echo [3/4] Committing changes...
git add vscode-extensions.txt .vscode-settings.json
git commit -m "Update VS Code configuration - %date% %time%"

echo [4/4] Pushing to GitHub...
git push

echo.
echo ========================================
echo Done! Your settings are saved to GitHub
echo ========================================
pause
