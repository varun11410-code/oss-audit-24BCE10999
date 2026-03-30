#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Varun
# Course: Open Source Software
# Purpose: Interactively generates a personalized manifesto and saves it to a text file.

# --- Concept Demonstration ---
# The rubric requires demonstrating an alias via a comment.
# An alias creates a custom shortcut command. For example:
# alias read_manifesto="cat manifesto_$(whoami).txt"

echo "========================================"
echo "   Open Source Manifesto Generator      "
echo "========================================"
echo "Answer three questions to generate your manifesto."
echo

# read -p prompts the user and stores their answer in a variable
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get the current date formatted as 'Day Month Year'
DATE=$(date +'%d %B %Y')
# Create a dynamic filename based on the logged-in user
OUTPUT="manifesto_$(whoami).txt"

# --- File Generation ---
# Using a single > overwrites/creates the file. 
# Using >> appends to the file.
echo "========================================" > "$OUTPUT"
echo "       MY OPEN SOURCE MANIFESTO         " >> "$OUTPUT"
echo "       Date: $DATE                      " >> "$OUTPUT"
echo "========================================" >> "$OUTPUT"
echo "I believe that software should empower, not restrict. Every day, I rely on tools like $TOOL to build and learn, standing on the shoulders of the open-source giants who came before me. To me, digital freedom ultimately means $FREEDOM. Because of the community that shared their code with me, I am committed to paying it forward. In the future, I pledge to build $BUILD and share it freely with the world, ensuring the next generation of developers has the same opportunities I did." >> "$OUTPUT"

echo
echo "[SUCCESS] Manifesto generated and saved to $OUTPUT"
echo "----------------------------------------"
echo "Here is what you wrote:"
echo

# Display the final text file to the user
cat "$OUTPUT"
echo "========================================"
