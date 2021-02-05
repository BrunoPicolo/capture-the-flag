#!/usr/bin/env python3

def cipher(number, shift):
  return (number + shift) % 26

def decipher(number, shift):
  return (number - shift) % 26

def getCharPosition(char):
    return ord(char) - ord('A')

def getCharFromPosition(pos):
    return chr(pos + ord('A')) 

def cipherMessage(msg, shift):
    result=""
    for i in msg.upper():
        result += getCharFromPosition(cipher(getCharPosition(i), shift))
    return result

def decipherMessage(msg, shift):
    result=""
    for i in msg.upper():
        result += getCharFromPosition(decipher(getCharPosition(i), shift))
    return result

def bruteForce(msg, f):
    for i in range(1,26):
        print(i, f(msg, i).lower())

choice = int(input("cipher(1)/decifer(2) message : "))
msg = input("Enter a message : ")

if choice == 1:
    bruteForce(msg, cipherMessage)
elif choice == 2:
    bruteForce(msg, cipherMessage)

