#!/bin/bash
# Author:SM
# Function: Verify exercise steps
# Comment:Intentionally obscure

a=$(date)
b=${a// /_}

USER=$(whoami)

if command -v md5 > /dev/null; then
    HASH1=$(echo -n "$USER" | md5)
    HASH2=$(echo -n "$b" | md5)
else
    HASH1=$(echo -n "$USER" | md5sum | awk '{print $1}')
    HASH2=$(echo -n "$b" | md5sum | awk '{print $1}')
fi

echo "$USER completed the step at:$a check:${HASH2: -4} ${HASH1: -4}"
