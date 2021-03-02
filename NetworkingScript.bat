#!/bin/bash
## This program is a "network dump" and prints important network info that outputs to a .txt file that can be viewed.


ip a | tee networkdump_$(date +"%F").txt #List IP Addresses
cat /etc/resolv.conf | tee -a networkdump_$(date +"%F").txt #DNS Server

sudo nmap -sV -Pn localhost | tee -a networkdump_$(date +"%F").txt #Open ports

exit