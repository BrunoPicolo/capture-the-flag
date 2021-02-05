#!/usr/bin/env python3

import sys

def calculInt(char):
  return ord(char) % ord('A') + 1

def decodeChar(msg_char, key_char):
  decoded_int = calculInt(key_char)
  return chr((calculInt(msg_char) + 26 - calculInt(key_char)) % 26 + ord('A'))

def decodeMsg(msg, key):
  i_key = 0
  key_size = len(key)
  decoded_msg = "" 
  for char in msg:
    decoded_msg += decodeChar(char, key[i_key])
    i_key = (i_key + 1) % key_size
  return decoded_msg

if (len(sys.argv) - 1 != 2):
  print('Usage: ', sys.argv[0], '<key> <msg>')
  exit(1)

key = sys.argv[1].upper()
msg = sys.argv[2].upper()

print('picoCTF{' + decodeMsg(msg, key) +  '}')
