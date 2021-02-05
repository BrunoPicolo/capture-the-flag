#!/bin/bash

javaFile="./VaultDoorTraining.java"

echo "picoCTF{$(grep equals ${javaFile} | cut -d\" -f2)}"
