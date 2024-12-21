#!/bin/bash
echo "OS Information: $(uname -a)"
echo "Hostname: $(hostname)"
echo "IP Address: $(hostname -I | awk '{print $1}')"
echo "Kernel Version: $(uname -r)"
echo "CPU Info:"
lscpu | grep "Model name"
echo "Memory Info:"
free -h
