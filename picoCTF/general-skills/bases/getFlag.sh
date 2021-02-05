#!/bin/bash

file_base64="message.b64"
decoded_msg=$(base64 -d ${file_base64})
echo "picoCTF{Â${decoded_msg}}"
exit 0
