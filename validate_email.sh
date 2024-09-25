#!/bin/bash

# Function to validate email using regex
validate_email() {
    local email="$1"
    
    # Regular expression for validating an Email
    local regex="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

    if [[ $email =~ $regex ]]; then
        echo "Valid email: $email"
    else
        echo "Invalid email: $email"
    fi
}

# Check if the user provided an email address
if [ $# -eq 0 ]; then
    echo "Usage: $0 email_address"
    exit 1
fi

# Validate the provided email address
for email in "$@"; do
    validate_email "$email"
done
