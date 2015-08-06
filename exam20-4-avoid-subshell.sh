#!/bin/bash

Lines=0

echo

cat myfile.txt | while read line;
                 do {
                     echo $line
                     (( Lines++ ));
                 }
             done

echo "Number of lines read = $Lines"

echo "------------------------"

exec 3<> myfile.txt
while read line <&3
do {
    echo "$line"
    (( Lines++ ));  
}
done
exec 3>&-

echo "Number of lines read = $Lines"

echo

exit 0
