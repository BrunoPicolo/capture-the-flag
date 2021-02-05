#!/bin/bash

cipher_text=$(awk 'BEGIN{FS="[{}]"} {print $2}' ciphertext)
echo "cipher text: ${cipher_text}"

decipher_text=$(echo ${cipher_text} | tr '[x-za-w]' '[a-z]')
echo "decipher text: ${decipher_text}"

echo "flag: picoCTF{${decipher_text}}"

