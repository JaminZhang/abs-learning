#!//bin/bash

Pass_Array ()
{
    local passed_array
    passed_array=( `echo "$1"` )
    echo "${passed_array[@]}"
}

original_array=( element1 element2 element3 element4 element5 )

echo
echo "original_array = ${original_array[@]}"

argument=`echo ${original_array[@]}`

returned_array=( `Pass_Array "$argument"` )

echo "returned_array = ${returned_array[@]}"

echo "============================================================="

Pass_Array "$argument"

echo "Passed array (within function) = ${passed_array[@]}"

echo


############################################

ret_array ()
{
    for element in {11..20}
    do
        echo "$element "
    done
}

arr=( $(ret_array) )

echo "Capturing array \"arr\" from function ret_array () ..."
echo "Third element of array \"arr\" is ${arr[2]}."
echo -n "Entire array is: "
echo ${arr[@]}

echo

exit 0

