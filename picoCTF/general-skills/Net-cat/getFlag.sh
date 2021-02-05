#!/bin/bash

IP="2018shell.picoctf.com"
port="36356"

nc ${IP} ${port} | tail -n1
exit
