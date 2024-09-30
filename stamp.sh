#! /bin/bash
# Author:SM
# Function: produces a stamp that can be appended to a file
# Intentionally a little bit obscure :)
# 
a=$(date)
b=$(echo $a |tr " " "_")
c=$(./verify $b)
d=$(./verify $USER)
echo "$USER completed the step at:$a check:${c: -4} ${d: -4}"
