#!/bin/bash

array0=( first second third )
array1=( '' )
array2=( )
array3=(   )

echo
ListArray()
{
echo
echo "Elements in array0:  ${array0[@]}"
echo "Elements in array1:  ${array1[@]}"
echo "Elements in array2:  ${array2[@]}"
echo "Elements in array3:  ${array3[@]}"
echo
echo "Length of first element in array0 = ${#array0}"
echo "Length of first element in array1 = ${#array1}"
echo "Length of first element in array2 = ${#array2}"
echo "Length of first element in array3 = ${#array3}"
echo
echo "Number of elements in array0 = ${#array0[*]}"
echo "Number of elements in array1 = ${#array1[*]}"
echo "Number of elements in array2 = ${#array2[*]}"
echo "Number of elements in array3 = ${#array3[*]}"
}

ListArray

array0=( "${array0[@]}" "new1" )
array1=( "${array1[@]}" "new1" )
array2=( "${array2[@]}" "new1" )
array3=( "${array3[@]}" "new1" )

ListArray

array0[${#array0[*]}]="new2"
array1[${#array1[*]}]="new2"
array2[${#array2[*]}]="new2"
array3[${#array3[*]}]="new2"

ListArray

height=${#array2[@]}
echo
echo "Stack height for array2 = $height"

unset array2[${#array2[@]}-1]
height=${#array2[@]}
echo
echo "POP"
echo "New stack height for array2 = $height"

ListArray

from=1
to=2
array3=( ${array0[@]:1:2} )
echo
echo "Elements in array3:  ${array3[@]}"

array4=( ${array0[@]/second/2nd} )
echo
echo "Elements in array4:  ${array4[@]}"

array5=( ${array0[@]//new?/old} )
echo
echo "Elements in array5:  ${array5[@]}"

array6=( ${array0[@]#*new} )
echo
echo "Elements in array6:  ${array6[@]}"

array7=( ${array0[@]#new1} )
echo
echo "Elements in array7:  ${array7[@]}"

array8=( ${array0[@]/new1/} )
echo
echo "Elements in array8:  ${array8[@]}"

zap='new*'
array9=( ${array0[@]/$zap/} )
echo
echo "Elements in array9:  ${array9[@]}"
echo "Number of elements in array9:  ${#array9[@]}"
array9=( "${array0[@]/$zap/}" )
echo "Elements in array9:  ${array9[@]}"
echo "Number of elements in array9:  ${#array9[@]}"

array10=( ${array0[@]#$zap} )
echo
echo "Elements in array10:  ${array10[@]}"
array10=( ${array0[@]#"$zap"} )
echo
echo "Elements in array10:  ${array10[@]}"

exit
