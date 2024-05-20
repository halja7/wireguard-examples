#!/bin/sh
#
TARGET_HOST=$1
TARGET_PORT=$2
EXTERNAL_PORT=$3

# Start the Python HTTP server in the background
python3 -m http.server 80 &

echo "I am client $EXTERNAL_PORT" >> id

# Run the Chisel client
chisel client $TARGET_HOST:$TARGET_PORT R:$EXTERNAL_PORT:localhost:80
