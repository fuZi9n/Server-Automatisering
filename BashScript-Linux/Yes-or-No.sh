#!/bin/bash

echo "Er du klar til at fortsætte? (Skriv 'ja' eller 'nej'):"
read input

input_lower=$(echo "$input" | tr '[:upper:]' '[:lower:]')

if [ "$input_lower" == "ja" ]; then
    echo "Godt! Lad os fortsætte."
elif [ "$input_lower" == "nej" ]; then
    echo "Ingen problemer. Vi venter."
else
    echo "Fejl. Kun 'ja' eller 'nej' er acceptabelt."
fi
