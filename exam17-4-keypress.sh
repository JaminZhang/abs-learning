#!/bin/bash

echo

old_tty_settings=$(stty -g)
stty -icanon
Keypress=$(head -c1)

echo
echo "Key pressed was \""$Keypress"\"."
echo

stty "$old_tty_settings"

exit 0
