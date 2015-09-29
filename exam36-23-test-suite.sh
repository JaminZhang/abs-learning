#!/bin/sh

default_option=FAIL

echo
echo -n "Testing "
sleep 1; echo -n ". "
sleep 1; echo -n ". "
sleep 1; echo ". "
echo

String="Double brackets supported?"
echo -n "Double brackets test: "

if [[ "$String" = "Double brackets supported?" ]]
then
    echo "PASS"
else
    echo "FAIL"
fi

String="Regex matching supported?"
echo -n "Regex matching: "
if [[ "$String" =~ R.....matching* ]]
then
    echo "PASS"
else
    echo "FAIL"
fi

test_arr=$default_option
Array=( If supports arrays will print PASS )
test_arr=${Array[5]}
echo "Array test: $test_arr"

csub_test ()
{
    echo "PASS"
}

test_csub=$default_option
test_csub=$(csub_test)
echo "Command substitution test: $test_csub"

echo

exit $?




