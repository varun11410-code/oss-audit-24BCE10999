#!/bin/bash
# Script 1: System Identity Report
# Author: Varun
# Course: Open Source Software
# Purpose: Displays system information and OS license details.

# --- Variables ---
STUDENT_NAME="Varun"
SOFTWARE_CHOICE="MySQL"

# --- System Info Gathering ---
# uname -r fetches the exact Linux kernel version
KERNEL=$(uname -r)
# whoami fetches the currently logged-in user
USER_NAME=$(whoami)
# $HOME is an environment variable storing the user's home directory
HOME_DIR=$HOME
# uptime -p shows how long the system has been running in a pretty format
UPTIME=$(uptime -p)
# date formats the current time and day
CURRENT_DATE=$(date +"%A, %d %B %Y %T")
# cat reads the os-release file, grep finds the name, and cut extracts the exact string
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d '"' -f 2)
LICENSE_MSG="This OS is distributed under the GNU GPL and other open-source licenses."

# --- Display Output ---
echo "========================================"
echo "          The Open Source Audit         "
echo "========================================"
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home Dir: $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "----------------------------------------"
echo "License : $LICENSE_MSG"
echo "========================================"
