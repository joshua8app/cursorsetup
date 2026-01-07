#!/bin/bash

# Base URL for GitHub raw content
BASE_URL="https://raw.githubusercontent.com/joshua8app/cursorsetup/refs/heads/main/"

# Create .cursor directory structure
echo "Creating .cursor directory structure..."
mkdir -p .cursor/commands
mkdir -p .cursor/rules

# Download command files
echo "Downloading command files..."
curl -s -o .cursor/commands/deploytodev.md "${BASE_URL}.cursor/commands/deploytodev.md"
curl -s -o .cursor/commands/proddeploy.md "${BASE_URL}.cursor/commands/proddeploy.md"
curl -s -o .cursor/commands/localbuild.md "${BASE_URL}.cursor/commands/localbuild.md"
curl -s -o .cursor/commands/setupdev.md "${BASE_URL}.cursor/commands/setupdev.md"

# Download rule files
echo "Downloading rule files..."
curl -s -o .cursor/rules/coding-guidelines.mdc "${BASE_URL}.cursor/rules/coding-guidelines.mdc"

# Check if .gitignore exists and ensure .cursor/ is ignored
if [ -f .gitignore ]; then
    echo "Checking .gitignore..."
    if ! grep -q "^\.cursor/" .gitignore && ! grep -q "^\.cursor$" .gitignore; then
        echo "Adding .cursor/ to .gitignore..."
        echo ".cursor/" >> .gitignore
    else
        echo ".cursor/ is already in .gitignore"
    fi
else
    echo "Creating .gitignore with .cursor/ entry..."
    echo ".cursor/" > .gitignore
fi

echo "Setup complete!"
