#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_folder> <archive_name>"
    exit 1
fi


SOURCE_FOLDER=$1
ARCHIVE_NAME=$2


if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "The source folder '$SOURCE_FOLDER' does not exist!"
    exit 1
fi


tar -czf "${ARCHIVE_NAME}.tar.gz" -C "$SOURCE_FOLDER" .


if [ $? -eq 0 ]; then
    echo "The folder '$SOURCE_FOLDER' has been archived as '${ARCHIVE_NAME}.tar.gz'"
else
    echo "An error occurred while creating the archive."
    exit 1
fi
