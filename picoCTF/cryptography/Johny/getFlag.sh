#!/bin/bash

john --wordlist=rockyou.txt --format=HMAC-SHA256 passwd+shadow 1> /dev/null 2>&1
user=$(john --show passwd+shadow | head -n 1 | cut -d ':' -f 1)
passwd=$(john --show passwd+shadow | head -n 1 | cut -d ':' -f 2)
flag=$((echo "${user}"; echo "${passwd}") | nc 2018shell.picoctf.com 42165 | rev | cut -d ' ' -f 1 | rev)
echo ${flag}
exit
