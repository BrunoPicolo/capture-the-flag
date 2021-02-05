#!/usr/bin/env python3

import sys

def rotate13(char):
  base_char = ''
  if (char.isupper()):
    base_char = 'A'
  elif (char.islower()):
    base_char = 'a'
  else:
    return char
  return chr(((ord(char) % ord(base_char) + 13) % 26) + ord(base_char))
   

def rot13(msg):
  coded_msg = ""
  for char in msg:
    coded_msg += rotate13(char) if (char.isalpha()) else char
  return coded_msg

if (len(sys.argv) != 2):
  print("Usage: " +  sys.argv[0] + " <msg>")
  exit(1)

msg = sys.argv[1]
print(rot13(msg))
