#!/bin/bash

perform_operation() {
    case "$operation" in
        "addition")
            result=$(echo "$num1 + $num2" | bc)
            operator="+"
            ;;
        "subtraction")
            result=$(echo "$num1 - $num2" | bc)
            operator="-"
            ;;
        "multiplication")
            result=$(echo "$num1 * $num2" | bc)
            operator="*"
            ;;
        "division")
            result=$(echo "scale=2; $num1 / $num2" | bc)
            operator="/"
            ;;
        *)
            echo "Ugyldig operation. Kun 'addition', 'subtraction', 'multiplication' eller 'division' er acceptabelt."
            exit 1
            ;;
    esac

    echo "Resultatet af $num1 $operator $num2 er: $result"
}

echo "Indtast det første tal:"
read num1
echo "Indtast det andet tal:"
read num2

echo "Hvilken beregning vil du lave? vil du udføre? (addition, subtraction, multiplication, division)"
read operation

perform_operation
