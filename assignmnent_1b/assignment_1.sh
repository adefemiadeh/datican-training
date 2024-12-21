#!/bin/bash
# Check if a directory is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Calculate and display the directory size
du -sh "$1"

