#!/bin/bash

arr0=( 10 11 12 13 14 15 )
arr1=( 20 21 22 23 24 25 )
arr2=( 30 31 32 33 34 35 )

choose_array ()
{
    eval array_member=\${arr${array_number}[element_number]}
    echo "Element $element_number of array $array_number is $array_member"
}

array_number=0
element_number=3
choose_array

array_number=2
element_number=4
choose_array

array_number=3
element_number=4
choose_array
