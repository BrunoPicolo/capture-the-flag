#!/usr/bin/env python3

coded_string = "16 9 3 15 3 20 6 { 20 8 5 14 21 13 2 5 18 19 13 1 19 15 14 }"

def decode_number(number):
    return chr(number + ord('A') - 1)

def decode_string(coded_string):
    coded_arr = coded_string.split(' ')
    decoded_string = ""  
    for ch in coded_arr:
        if (ch == '{' or ch == '}'):
            decoded_string += ch
        else:
            decoded_string += decode_number(int(ch))
    return decoded_string

print(decode_string(coded_string))
exit()
