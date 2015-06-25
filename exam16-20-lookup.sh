#!/bin/bash

file=words.data

echo
echo "Testing file $file"
echo

while [ "$word" != end ]
do
    read word
    look $word > /dev/null
    lookup=$?

    if [ "$lookup" -eq 0 ]
    then
        echo "\"$word\" is valid."
    else
        echo "\"$word\" is invalid."
    fi
done < "$file"

echo

exit 0

while read word && [[ $word != end ]]
do if look "$word" > /dev/null
    then echo "\"$word\" is valid."
    else echo "\"$word\" is invalid."
fi
done < "$file"

exit 0
