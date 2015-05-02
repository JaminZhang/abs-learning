#!/bin/bash

if cmp a b &> /dev/null
then
    echo "Files a and b identical."
else
    echo "Files a and b differ."
fi

if grep -q Bash file
then
    echo "File contains at least one occurence of Bash."
fi

word=Linux
letter_sequence=inu
if echo "$word" | grep -q "$letter_sequence"
then
    echo "$letter_sequence found in $word"
else
    echo "$letter_sequence not found in $word"
fi

if COMMAND_WHOSE_EXIT_STATUS_IS_0_UNLESS_ERROR_OCCURRED
then
    echo "Command succeeded."
else
    echo "Command failed."
fi
