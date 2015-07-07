#!/bin/bash

keypresses=4

old_tty_setting=$(stty -g)

echo "Press $keypresses keys."
stty -icanon -echo

keys=$(dd bs=1 count=$keypresses 2> /dev/null)

stty "$old_tty_setting"

echo "You pressed the \"$keys\" keys."


exit 0

