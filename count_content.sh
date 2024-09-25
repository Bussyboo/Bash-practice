#!/bin/bash

# Check if a file is passed as an argument
if [ $# -eq 0 ]; then
  echo "No file provided. Usage: ./count_content.sh <filename>"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "File not found!"
  exit 1
fi

# Read the file content
file_content=$(cat "$1")

# Count lines, words, and characters
line_count=$(wc -l < "$1")
word_count=$(wc -w < "$1")
char_count=$(wc -m < "$1")

# Display the results
echo "Content of the file:"
echo "----------------------"
echo "$file_content"
echo "----------------------"
echo "Number of lines: $line_count"
echo "Number of words: $word_count"
echo "Number of characters: $char_count"
