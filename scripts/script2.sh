#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Varun
# Course: Open Source Software
# Purpose: Checks if MySQL is installed and prints its FOSS philosophy.

# The package name for MySQL on Ubuntu
PACKAGE="mysql-server"

echo "Inspecting Package: $PACKAGE..."
echo "----------------------------------------"

# --- Check if package is installed ---
# dpkg -l lists packages, grep -q searches silently for the exact package name
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "[SUCCESS] $PACKAGE is installed on this system."
    echo "--- Package Details ---"
    # Extract version details using dpkg-query
    dpkg-query -W -f='Version: ${Version}\n' $PACKAGE
    echo "----------------------------------------"
else
    echo "[WARNING] $PACKAGE is NOT installed."
    echo "Please install it using 'sudo apt install $PACKAGE'."
    # Exit the script with an error code if not found
    exit 1 
fi

# --- Philosophy Note ---
# Case statement to match the package name and print its purpose
echo "--- FOSS Philosophy Note ---"
case $PACKAGE in
    "apache2" | "httpd")
        echo "Apache: The web server that built the open internet."
        ;;
    "mysql-server" | "mysql")
        echo "MySQL: Open source at the heart of millions of web applications."
        ;;
    "firefox")
        echo "Firefox: A nonprofit fighting for an open and private web."
        ;;
    "vlc")
        echo "VLC: Plays anything - built by students in Paris."
        ;;
    *)
        echo "$PACKAGE: A valuable contribution to the open-source ecosystem."
        ;;
esac
echo "========================================"
