#!/bin/bash

echo

for file in *
do
    ls -l "$file"
done

echo; echo

for file in [jx]*
do
    rm -f $file
    echo "Removed file \"$file\"".
done

echo

exit 0
