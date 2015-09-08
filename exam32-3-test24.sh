#!/bin/bash

badname=`ls | grep ' '`

rm "$badname"

exit 0
