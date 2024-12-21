#!/bin/bash

read -p "Enter the file path to archive: " file_path

# Create an archive
tar -czvf archive.tar.gz "$file_path"

# Encrypt the archive
gpg -c archive.tar.gz
