#!/bin/bash

return_test ()
{
    return $1
}


return_test 27 
echo $?

return_test 255
echo $? 

return_test 257
echo $?

#return_test -151896
echo $?

Return_Val=

alt_return_test ()
{
    fvar=$1
    Return_Val=$fvar
    return
}

alt_return_test 1
echo $?
echo "return value = $Return_Val"

alt_return_test 256
echo "return value = $Return_Val"

alt_return_test 257
echo "return value = $Return_Val"

alt_return_test 25701
echo "return value = $Return_Val" 

exit 0
