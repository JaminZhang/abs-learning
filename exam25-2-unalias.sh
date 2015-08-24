#!/bin/bash

shopt -s expand_aliases

alias llm='ls -al | more'
llm

echo

unalias llm 
llm

exit 0
