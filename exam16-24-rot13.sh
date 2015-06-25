#!/bin/bash

cat "$@" | tr 'a-zA-Z' 'n-za-mN-ZA-M'

exit 0
