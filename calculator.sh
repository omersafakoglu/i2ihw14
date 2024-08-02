#!/bin/bash

# Function to perform addition
addition() {
    echo "Enter two numbers:"
    read a b
    echo "Result: $(($a + $b))"
}

# Function to perform subtraction
subtraction() {
    echo "Enter two numbers:"
    read a b
    echo "Result: $(($a - $b))"
}

# Function to perform multiplication
multiplication() {
    echo "Enter two numbers:"
    read a b
    echo "Result: $(($a * $b))"
}

# Function to perform division
division() {
    echo "Enter two numbers:"
    read a b
    if [ $b -eq 0 ]; then
        echo "Division by zero is not allowed."
    else
        echo "Result: $(($a / $b))"
    fi
}

# Function to perform modulo
modulo() {
    echo "Enter two numbers:"
    read a b
    echo "Result: $(($a % $b))"
}

# Function to perform factorial
factorial() {
    echo "Enter a number:"
    read n
    fact=1
    for (( i=1; i<=n; i++ ))
    do
        fact=$((fact * i))
    done
    echo "Result: $fact"
}

echo "Choose an operation:"
echo "+ for addition"
echo "- for subtraction"
echo "* for multiplication"
echo "/ for division"
echo "% for modulo"
echo "! for factorial"

read operation

case $operation in
    +)
        addition
        ;;
    -)
        subtraction
        ;;
    \*)
        multiplication
        ;;
    /)
        division
        ;;
    %)
        modulo
        ;;
    !)
        factorial
        ;;
    *)
        echo "Invalid operation"
        ;;
esac
