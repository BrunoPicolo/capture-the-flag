#!/bin/bash

 flag=$(curl --silent http://2018shell.picoctf.com:8930 | grep -E "if \(" | cut -d "'" -f 2 | awk '{a[i++]=$0}END{for(j=i-1; j>=0; j--) printf("%s", a[j])}')
 echo ${flag}
 exit
