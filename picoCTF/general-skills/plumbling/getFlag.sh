#Â!/bin/bash

domain=jupiter.challenges.picoctf.org 
port=7480
nc -w 1 ${domain} ${port} | grep -e 'picoCTF{.*}'
