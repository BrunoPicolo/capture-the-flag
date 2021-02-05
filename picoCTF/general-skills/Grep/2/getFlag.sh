#!/bin/bash

grep --recursive --no-filename --extended-regexp "picoCTF{.*}" -- .
exit
