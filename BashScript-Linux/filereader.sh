#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filnavn>"
    exit 1
fi

file="$1"

if [ ! -f "$file" ]; then
    echo "Fejl: Filen '$file' eksisterer ikke."
    exit 1
fi

while IFS= read -r line; do
    echo "$line"
done < "$file"
