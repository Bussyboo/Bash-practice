#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1

    # Check if number is less than 2
    if (( num < 2 )); then
        echo "$num is not a prime number."
        return
    fi

    # Loop through numbers from 2 to sqrt(num)
    for ((i=2; i*i<=num; i++)); do
        if (( num % i == 0 )); then
            echo "$num is not a prime number."
            return
        fi
    done

    echo "$num is a prime number."
}

# Read number from the user
read -p "Enter a number: " number

# Call the function with the input number
is_prime $number
