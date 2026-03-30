#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Varun
# Course: Open Source Software
# Purpose: Audits critical system directories and MySQL configs using loops.

# Array containing standard Linux directories plus the MySQL config directory
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/etc/mysql")

echo "========================================"
echo "       Directory Audit Report           "
echo "========================================"

# A for loop to iterate through every item in the DIRS array
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists on the system
    if [ -d "$DIR" ]; then
        # Use ls -ld piped to awk to extract just the permissions ($1), owner ($3), and group ($4)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Use du -sh to get the human-readable size. 
        # 2>/dev/null hides 'Permission denied' errors for files we can't read as a normal user.
        SIZE=$(sudo du -sh "$DIR" 2>/dev/null | awk '{print $1}')
        
        echo "Directory : $DIR"
        echo "Permissions: $PERMS"
        echo "Total Size : $SIZE"
        echo "----------------------------------------"
    else
        # Fallback if the directory is missing
        echo "[WARNING] Directory $DIR does not exist on this system."
        echo "----------------------------------------"
    fi
done

echo "Audit Complete."
echo "========================================"
