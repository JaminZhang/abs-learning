#!/bin/bash

E_NOSUCHFILE=85

read -p "File: " file
if [ ! -e  "$file" ]
then
    echo "File $file not found."
    exit $E_NOSUCHFILE
fi

read -p "Title: " title
cat - $file <<<$title > $file.new

echo "Modified file is $file.new"

exit
