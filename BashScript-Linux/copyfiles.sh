#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

source_dir="$1"
destination_dir="$2"

if [ ! -d "$source_dir" ]; then
    echo "Source directory '$source_dir' does not exist!"
    exit 1
fi

if [ ! -d "$destination_dir" ]; then
    mkdir -p "$destination_dir"
fi

for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename -- "$file")
        cp "$file" "$destination_dir/$filename.bak"
        echo "Copied '$filename' to '$destination_dir/$filename.bak'"
    fi
done

echo "Backup of files from '$source_dir' to '$destination_dir' completed."
