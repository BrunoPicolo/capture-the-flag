#!/bin/bash

executable="run"
strings ${executable} | grep -E "picoCTF{.+}"
exit
