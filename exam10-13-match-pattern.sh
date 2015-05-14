#!/bin/bash

v0=abc1234zip1234abc
echo "v0 = $v0"
echo

v1=${v0/#abc/ABCDEF}

echo "v1 = $v1"

v2=${v0/%abc/ABCDEF}

echo "v2 = $v2"

echo

v3=${v0/#123/000}
echo "v3 = $v3"

v4=${v0/%123/000}
echo "v4 = $v4"

exit 0
