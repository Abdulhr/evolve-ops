#!/bin/bash
# Simple Bash script example

NAME=${1:-"World"}

echo "Hello, $NAME!"
echo "Today is $(date '+%A, %B %d, %Y')"

# Get current directory
CURRENT_DIR=$(pwd)
echo "You are in: $CURRENT_DIR"

# Count files in current directory
FILE_COUNT=$(ls -1 | wc -l)
echo "This directory contains $FILE_COUNT items"
