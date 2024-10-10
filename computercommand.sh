#!/bin/bash
var_1="output1"
echo "voice clippy commencing for 16 seconds"


if [ $# -lt 1 ]; then
	./auto_record.sh 8
else 
	./auto_record.sh "$1"
fi


python3 exlexy4.py > "$var_1"
cat "$var_1"