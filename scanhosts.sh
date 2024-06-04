#! /usr/bin/bash

nmap -sn 192.168.0.0/24 | grep -Eo "192.*" > livehosts.txt

wait 5 

nmap -iL livehosts.txt > scannedhosts.txt
