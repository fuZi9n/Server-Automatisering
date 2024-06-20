#!/bin/bash

output_file="installed_software.txt"

list_apt() {
    echo "Listing installed software using apt..." > "$output_file"
    dpkg-query -W -f='${binary:Package} ${Version}\n' >> "$output_file"
}

list_yum() {
    echo "Listing installed software using yum..." > "$output_file"
    yum list installed >> "$output_file"
}

list_dnf() {
    echo "Listing installed software using dnf..." > "$output_file"
    dnf list installed >> "$output_file"
}

# Tjekker hvilke package manager der benyttes og outputter fra denne
if command -v dpkg-query &> /dev/null; then
    list_apt
elif command -v yum &> /dev/null; then
    list_yum
elif command -v dnf &> /dev/null; then
    list_dnf
else
    echo "No supported package manager found."
    exit 1
fi

echo "Installed software list has been exported to $output_file"
