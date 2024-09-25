#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <file> <find_string> <replace_string>"
    exit 1
fi

# Assign arguments to variables
FILE=$1
FIND_STRING=$2
REPLACE_STRING=$3

# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File $FILE not found."
    exit 1
fi

# Use sed to find and replace the string in the file
sed -i '' "s/${FIND_STRING}/${REPLACE_STRING}/g" "$FILE"

# Inform the user that the replacement is complete
echo "Replaced all occurrences of '$FIND_STRING' with '$REPLACE_STRING' in $FILE."
