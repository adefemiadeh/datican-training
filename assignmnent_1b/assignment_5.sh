#!/bin/bash
threshold=90
df -h | awk '{if($5+0 > '$threshold') print $1 ": " $5 " used."}'
