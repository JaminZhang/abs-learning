#!/bin/bash

AnArray=( $(ls --inode --ignore-backups --almost-all \
    --directory --full-time --color=none --time=status \
        --sort=time -l ${PWD} ) )

SubArray=( ${AnArray[@]:11:1}  ${AnArray[@]:6:5} )

echo "Current directory and date of last status change:"
echo "${SubArray[@]}"

exit 0
