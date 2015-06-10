#!/bin/bash

HELLO_CALL=65
GOODBYE_CALL=66

if [ $0 = "./goodbye" ]
then
    echo "Good-bye!"
    exit $GOODBYE_CALL
fi

echo "Hello!"
exit $HELLO_CALL
