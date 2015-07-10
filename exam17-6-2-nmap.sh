#!/bin/bash

SERVER=127.0.0.1
PORT_NUMBER=52113

nmap $SERVER -p"$PORT_NUMBER" | grep -w "$PORT_NUMBER"

exit 0
