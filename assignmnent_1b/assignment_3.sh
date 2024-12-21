#!/bin/bash
echo "Server Name: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Current Users: $(who | wc -l)"
echo "Memory Usage:"
free -h
echo "Disk Usage:"
df -h
