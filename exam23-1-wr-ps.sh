#!/bin/bash

echo

echo "random input" | while read i
do
    global=3D": Not available outside the loop."
done

echo "\$global (from outside the subprocess) = $global"

echo; echo "--"; echo

while read i
do
    echo $i
    global=3D": Available outside the loop."
done < <( echo "random input" )

echo "\$global (using process substitution) = $global"

echo; echo "##########"; echo


declare -a inloop
index=0
cat $0 | while read line
do
    inloop[$index]="$line"
    ((index++))
done
echo "OUTPUT = "
echo ${inloop[*]}

echo; echo "--"; echo

declare -a outloop
index=0
while read line
do
    outloop[$index]="$line"
    ((index++))
done < <( cat $0 )
echo "OUTPUT = "
echo ${outloop[*]}

exit $?
