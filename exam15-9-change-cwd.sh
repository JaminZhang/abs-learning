#!/bin/bash

dir1=/usr/local
dir2=/var/spool

pushd $dir1
echo "Now in directory `pwd`."

pushd $dir2
echo "Now in directory `pwd`."

echo "The top entry in the DIRSTACK array is $DIRSTACK."
popd
echo "Now back in directory `pwd`."

popd
echo "Now back in original working directory `pwd`."

exit 0
