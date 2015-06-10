#!/bin/bash

OUTFILE=symlinks.list

directory=${1-`pwd`}

echo "symloic links in directory \"$directory\"" > "$OUTFILE"
echo "---------------------------" >> "$OUTFILE"

for file in "$( find $directory -type l )"
do
    echo "$file"
done | sort >> "$OUTFILE"

exit $?
