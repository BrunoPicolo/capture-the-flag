#!/bin/bash

picture="pico_img.png"

strings  ${picture} | grep --only-matching "picoCTF{.*}"
