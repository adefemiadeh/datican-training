#!/bin/bash
# Check if the file/directory exists
if [ -e "$1" ]; then
  if [ -f "$1" ]; then
    echo "$1 is a file."
  elif [ -d "$1" ]; then
    echo "$1 is a directory."
  else
    echo "$1 exists but is neither a file nor a directory."
  fi
else
  echo "$1 does not exist."
fi


