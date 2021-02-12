#!/bin/bash

file=VaultDoor4.java 

printf 'picoCTF{'
decimal=$(grep --after-context=1 "myBytes " -- ${file} | tail -n 1 | sed -e 's/ ,//g')
for val in ${decimal}; do
  printf \\$(printf '%o' ${val})
done

hexadecimal=$(grep --after-context=2 "myBytes " -- ${file} | tail -n 1 | sed -e 's/,/ /g' -e 's/0x/x/g')
for val in ${hexadecimal}; do
  printf \\${val}
done

octal=$(grep --after-context=3 "myBytes " -- ${file} | tail -n 1 | sed -e 's/,//g' -e 's/ 0/ /g')
for val in ${octal}; do
  printf \\${val}
done

ascii=$(grep --after-context=4 "myBytes " -- ${file} | tail -n 1 | sed -e "s/'//g" -e 's/,//g' -e 's/ //g')
printf "${ascii}}\n"
exit
