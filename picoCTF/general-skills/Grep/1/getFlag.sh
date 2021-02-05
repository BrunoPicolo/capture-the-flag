#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Usage : $0 <file>"
	exit
fi

file=$1
grep --ignore-case -E "picoctf{.*}" -- ${file}
exit 
