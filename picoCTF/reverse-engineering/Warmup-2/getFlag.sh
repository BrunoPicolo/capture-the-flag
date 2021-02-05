#!/bin/bash

message="dGg0dF93NHNfczFtcEwz"
decoded_msg="$(echo ${message} | base64 --decode)"
printf "picoCTF{%s}\n" ${decoded_msg}
exit 0
