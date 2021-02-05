#!/bin/bash

file="garden.jpg"
strings ${file} | grep --color=none --only-match "pico.*}"
exit 0
