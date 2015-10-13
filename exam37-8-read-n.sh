#!/bin/bash

num_chars=61

read -N $num_chars var < $0
echo "$var"
exit
