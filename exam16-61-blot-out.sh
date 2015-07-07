#!/bin/bash

PASSES=7 

BLOCKSIZE=1

E_BADARGS=70
E_NOT_FOUND=71
E_CHANGED_MIND=72

if [ -z "$1" ]
then
    echo "Usage: `basename $0` filename"
    exit $E_BADARGS
fi

file=$1

if [ ! -e "$file" ]
then
    echo "File \"$file\" not found."
    exit $E_NOT_FOUND
fi

echo; echo -n "Are you absolutely sure you want to blot out \"$file\" (y/n)? "
read answer
case "$answer" in
    [nN]) echo "Changed your mind, huh?"
            exit $E_CHANGED_MIND
            ;;
    *)    echo "Blotting out file \"$file\".";;
esac

flength=$(ls -l "$file" | awk '{print $5}')
pass_count=1

chmod u+w "$file"

echo

while [ "$pass_count" -le "$PASSES" ]
do
    echo "Pass #$pass_count"
    sync
    dd if=/dev/urandom of=$file bs=$BLOCKSIZE count=$flength
    sync
    dd if=/dev/zero of=$file bs=$BLOCKSIZE count=$flength
    sync
    let "pass_count += 1"
    echo
done

rm -f $file
sync

echo "File \"$file\" blotted out and deleted."; echo

exit 0
