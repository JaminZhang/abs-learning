#!/bin/bash

head -c4 /dev/urandom | od -N4 -tu4 | sed -ne '1s/.* //p'
