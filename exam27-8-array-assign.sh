#!/bin/bash

declare -a bigOne=( /dev/* )
echo
echo 'Conditions: Unquoted, default IFS, All-Elements-Of'
echo "Number of elements in array is ${#bigOne[@]}"

echo
echo '- - testing: =( ${array[@]} ) - -'
times
declare -a bigTwo=( ${bigOne[@]} )
times

echo
echo '- - testing: =${array[@]} - -'
times
declare -a bigThree=${bigOne[@]}
times

echo ${bigTwo[0]}
echo ${bigThree[0]}

exit 0
