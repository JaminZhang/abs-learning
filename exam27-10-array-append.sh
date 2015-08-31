#!/bin/bash

declare -a array1=( zero1 one1 two1 )

declare -a array2=( [0]=zero2 [2]=two2 [3]=three2 )

echo
echo '- Confirm that the array is really subscript sparse. -'
echo "Number of elements: 4"
for (( i = 0 ; i < 4 ; i++ ))
do
    echo "Element [$i]: ${array2[$i]}"
done

declare -a dest

echo
echo 'Conditions: Unquoted, default IFS, All-Elements-Of operator'
echo '- Undefined elements not present, subscripts not maintained. -'

dest=( ${array1[@]} ${array2[@]} )

echo
echo '- - Testing Array Append - -'
cnt=${#dest[@]}

echo "Number of elements: $cnt"
for (( i = 0 ; i < cnt ; i++ ))
do
    echo "Element [$i]: ${dest[$i]}"
done

dest[0]=${array1[@]}
dest[1]=${array2[@]}

echo
echo '- - Testing modified array - -'
cnt=${#dest[@]}

echo "Number of elements: $cnt"
for (( i = 0 ; i < cnt ; i++ ))
do
        echo "Element [$i]: ${dest[$i]}"
done

echo
echo '- - Reassign and list second element - -'

declare -a subArray=${dest[1]}
cnt=${#subArray[@]}

echo "Number of elements: $cnt"
for (( i = 0 ; i < cnt ; i++ ))
do
        echo "Element [$i]: ${subArray[$i]}"
done

echo
echo '- - Listing restored element - -'
declare -a subArray=( ${dest[1]} )
cnt=${#subArray[@]}

echo "Number of elements: $cnt"
for (( i = 0 ; i < cnt ; i++ ))
do
        echo "Element [$i]: ${subArray[$i]}"
done
echo '- - Do not depend on this behavior. - -'
echo '- - This behavior is subject to change - -'
echo '- - in versions of Bash newer than version 2.05b - -'

exit 0
