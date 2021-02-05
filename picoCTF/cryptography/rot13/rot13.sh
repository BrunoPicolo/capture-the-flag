#!/bin/bash

# Usage : rot13.bash [-d|-c] message

function decrypt {
  local msg=$@ 
  echo ${msg} | tr 'N-ZA-Mn-za-m' 'A-Za-z' 
}

function crypt {
  local msg=$@ 
  echo ${msg} | tr 'A-Za-z' 'N-ZA-Mn-za-m'
}

[[ $# -eq 0 ]] && echo "$0 [-d|-c] message" && exit 1

while getopts 'd:a:' opt; do 
case ${opt} in
  d ) decrypt ${OPTARG};;
  a ) crypt ${OPTARG};;
  ? ) echo "$0 [-d|-c] message";;
esac
done
shift "$(($OPTIND -1))"

exit 0
