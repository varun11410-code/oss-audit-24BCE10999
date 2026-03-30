#!/bin/bash
# Script 4: Log File Analyzer
# Author: Varun
# Course: Open Source Software
# Usage: ./script4.sh <path_to_log> <keyword>

# Command-line arguments
LOGFILE=$1
# Default keyword is 'error' if the user doesn't provide a second argument
KEYWORD=${2:-"error"} 
COUNT=0

echo "========================================"
echo "          Log File Analyzer             "
echo "========================================"

# Do-while style retry loop: checks if file is missing or empty (-s)
while true; do
    if [ -z "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; then
        echo "[!] Error: File '$LOGFILE' is missing or empty."
        read -p "Please enter a valid log file path (e.g., /var/log/dpkg.log): " LOGFILE
    else
        break # Exit the infinite loop once a valid file is provided
    fi
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# while-read loop to process the file line by line
while IFS= read -r LINE; do
    # Check if the current line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment the counter
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "----------------------------------------"
echo "RESULT: Keyword '$KEYWORD' found $COUNT times."
echo "----------------------------------------"
echo "Last 5 matching lines:"
# Combine grep and tail to fulfill the final assignment requirement
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "========================================"
