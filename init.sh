#!/bin/bash

echo "Preparing the AIG toolset repository for engagement activities..."

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo ""
    echo "[ERROR] npm is not installed or not in your PATH."
    echo "Please install Node.js and npm before continuing."
    echo ""
    exit 1
fi

echo ""
echo "[OK] Node.js and npm are installed."
echo ""
echo "Installing required skills..."
echo ""

# Those skills are helpful for processing documents and data from interviews.
# Example:
npx skills add https://github.com/anthropics/skills --skill docx
npx skills add https://github.com/anthropics/skills --skill xlsx
npx skills add https://github.com/anthropics/skills --skill pdf
npx skills add https://github.com/anthropics/skills --skill pptx

echo ""
echo "Initialization complete! You are ready to start the engagement."
