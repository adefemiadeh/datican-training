#!/bin/bash
threshold=80
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)

if [ "$cpu_usage" -gt "$threshold" ]; then
  echo "CPU usage is high: $cpu_usage%"
else
  echo "CPU usage is normal: $cpu_usage%"
fi
