#!/usr/bin/env bash
# Shell script to compile LaTeX CV (macOS/Linux)
# Usage: ./build-cv.sh ["cv-name"]

set -uo pipefail

CVName="${1:-Timothy-Joseph CV}"

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
GRAY='\033[0;90m'
NC='\033[0m'

echo -e "${GREEN}Building CV: ${CVName}.tex${NC}"

# Check if LaTeX is installed
if ! command -v pdflatex >/dev/null 2>&1; then
    echo -e "${RED}Error: pdflatex not found. Please install a LaTeX distribution:${NC}"
    echo -e "${YELLOW}  - macOS: MacTeX (https://www.tug.org/mactex/) or 'brew install --cask mactex-no-gui'${NC}"
    echo -e "${YELLOW}  - Make sure pdflatex is in your PATH${NC}"
    exit 1
fi

# Check if tex file exists
if [ ! -f "${CVName}.tex" ]; then
    echo -e "${RED}Error: ${CVName}.tex not found!${NC}"
    echo -e "${YELLOW}Available CV files:${NC}"
    ls -- *.tex 2>/dev/null
    exit 1
fi

# Compile the CV
echo -e "${BLUE}Compiling ${CVName}.tex...${NC}"

output=$(pdflatex -synctex=1 -interaction=nonstopmode -file-line-error "${CVName}.tex" 2>&1)
status=$?

if [ $status -eq 0 ]; then
    echo -e "${GREEN}CV compiled successfully!${NC}"
    echo -e "${CYAN}Output: ${CVName}.pdf${NC}"
    # Open the PDF if it exists (commented out to prevent auto-opening)
    # if [ -f "${CVName}.pdf" ]; then
    #     echo -e "${BLUE}Opening PDF...${NC}"
    #     open "${CVName}.pdf"
    # fi
else
    echo -e "${RED}Compilation failed!${NC}"
    echo -e "${YELLOW}LaTeX output:${NC}"
    echo "$output"
fi

# Clean up auxiliary files
echo -e "${BLUE}Cleaning auxiliary files...${NC}"
auxPatterns=("*.aux" "*.log" "*.out" "*.synctex.gz" "*.fls" "*.fdb_latexmk")

for pattern in "${auxPatterns[@]}"; do
    matches=(${pattern})
    if [ -e "${matches[0]}" ]; then
        removed=""
        for f in "${matches[@]}"; do
            rm -f -- "$f"
            removed="${removed}${removed:+, }${f}"
        done
        echo -e "${GRAY}Removed: ${removed}${NC}"
    fi
done

echo -e "${GREEN}Build process completed!${NC}"

exit $status
