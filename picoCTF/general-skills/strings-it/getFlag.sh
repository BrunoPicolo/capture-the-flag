#!/bin/bash

file="strings"
strings ${file} | grep --only-match "pico.*}" 
exit 0
