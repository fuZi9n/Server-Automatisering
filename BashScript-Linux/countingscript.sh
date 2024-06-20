#!/bin/bash

echo "Indtast venligst et tal:"
read number

if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Fejl: Indtast venligst kun et heltal."
    exit 1
fi

echo "Tæller fra 1 til $number:"
for (( i=1; i<=$number; i++ )); do
    echo $i
done
