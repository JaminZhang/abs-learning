#!/bin/bash

array=( zero one two three four five )

echo ${array[0]}
echo ${array:0}

echo ${array:1}

echo "--------------"

echo ${#array[0]} 

echo ${#array}

echo ${#array[1]} 

echo ${#array[*]}

echo ${#array[@]}

echo "--------------"

array2=( [0]="first element" [1]="second element" [3]="fourth element" )

echo ${array2[0]}
echo ${array2[1]}
echo ${array2[2]}

echo ${array2[3]}
echo ${#array2[0]}
echo ${#array2[*]}

exit
