#!/bin/bash

# Check if a file path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 /usr/bin/drawio"
  exit 1
fi

# Get the file path from the first argument
FILE_PATH="$1"
echo $FILE_PATH

# Open the file with draw.io
drawio "$FILE_PATH"
