#!/bin/bash

declare -a colors

echo "Enter your favorite colors (separated from each other by a space)."

read -a colors

echo

element_count=${#colors[@]}

index=0

while [ "$index" -lt "$element_count" ]
do
    echo ${colors[$index]}
    let "index = $index + 1"
done

echo

echo ${colors[@]}

echo

unset colors[1]

echo  ${colors[@]} 

unset colors

echo; echo -n "Colors gone."
echo ${colors[@]}

exit 0
