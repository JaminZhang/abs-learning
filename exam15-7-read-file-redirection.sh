#!/bin/bash

read var1 <data-file
echo "var1 = $var1"

read var2 var3 <data-file
echo "var2 = $var2  var3=$var3"

echo "------------------------------------------------"

while read line
do
    echo "$line"
done < data-file

echo "List of all users:"
OIFS=$IFS; IFS=:
while read name passwd uid gid fullname ignore
do
    echo "$name ($fullname)"
done < /etc/passwd
IFS=$OIFS

echo "------------------------------------------------"
echo "List of all users:"

while IFS=: read name passwd uid gid fullname ignore
do
    echo "$name ($fullname)"
done < /etc/passwd

echo 
echo "\$IFS still $IFS"

exit 0
