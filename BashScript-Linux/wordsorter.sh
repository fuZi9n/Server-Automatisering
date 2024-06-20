#!/bin/bash

echo "Indtast en liste af ord adskilt af mellemrum:"
read -r input

if [ -z "$input" ]; then
    echo "Ingen ord indtastet. Afslutter scriptet."
    exit 1
fi

read -r -a words <<< "$input"

sorted_words=($(printf '%s\n' "${words[@]}" | sort))

echo "Ordene i alfabetisk rækkefølge:"
for word in "${sorted_words[@]}"; do
    echo "$word"
done
