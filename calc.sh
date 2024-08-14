#!/bin/bash

echo "Welcome to the calculator!"
sleep 1

# Prompt for the first number
echo "Please enter your first number:"
read zahl1

# Prompt for the operator
echo "Please enter your operator (+ or -):"
read operator

# Prompt for the second number
echo "Please enter your second number:"
read zahl2

sleep 2
echo "Calculating..."
sleep 3

# Correct if statement with arithmetic operation
if [ "$operator" = "+" ]; then
    echo $((zahl1 + zahl2))
elif [ "$operator" = "-" ]; then
    echo $((zahl1 - zahl2))
else
    echo "Invalid operator. Please use + or -."
fi

