#!/bin/bash

arrayZ=( one two three four five five )

echo

echo ${arrayZ[@]:0}

echo ${arrayZ[@]:1}

echo ${arrayZ[@]:1:2}

echo "---------"


echo ${arrayZ[@]#f*r}

echo ${arrayZ[@]##t*e}

echo ${arrayZ[@]%h*e}

echo ${arrayZ[@]%%t*e}


echo "----------------------"

echo ${arrayZ[@]/fiv/XYZ}

echo ${arrayZ[@]//iv/YY}

echo ${arrayZ[@]//fi/}

echo ${arrayZ[@]/#fi/XY}

echo ${arrayZ[@]/%ve/ZZ}

echo ${arrayZ[@]/%o/XX}

echo "-----------------------------"

replacement() {
        echo -n "!!!"
}

echo ${arrayZ[@]/%e/$(replacement)}

echo "------------------------------------"

echo ${arrayZ[@]//*/$(replacement optional_arguments)}

echo

exit 0
