#!/bin/bash
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <file> <remote_user> <remote_host>"
  exit 1
fi

scp "$1" "$2@$3:~/backup/"
echo "Backup completed."
