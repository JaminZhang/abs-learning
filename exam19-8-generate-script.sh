#!/bin/bash

OUTFILE=generated.sh

(
cat <<'EOF'
#!/bin/bash

echo "This is a generated shell script."


echo "Generated file will be named: $OUTFILE"

a=7
b=3

let "c = $a * $b"
echo "c = $c"

exit 0
EOF
) > $OUTFILE


if [ -f "$OUTFILE" ]
then
    chmod 755 $OUTFILE
else
    echo "Problem in creating file: \"$OUTFILE\""
fi

exit 0
