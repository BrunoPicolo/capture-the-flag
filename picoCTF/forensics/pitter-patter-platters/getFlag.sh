#!/bin/bash

# mkdir fs; sudo mount -o loop suspicious.dd.sda1 fs

dd if=suspicious.dd.sda1 skip=2098231 count=100 iflag=skip_bytes,count_bytes of=slice 2> /dev/null
revFlag=$(tr -d '\0' < slice)
echo ${revFlag} | rev
rm slice
exit 0
