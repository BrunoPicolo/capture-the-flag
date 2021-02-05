#!/bin/bash

picture="flag.png"

tesseract ${picture} tmp 2> /dev/null

head -n 1 tmp.txt
rm tmp.txt
