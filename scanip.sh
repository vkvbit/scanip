#!/usr/bin/bash
target_ip='IP address of target'
xterm -hold -e zsh -c "ping -n 3 ${target_ip}" & 
xterm -hold -e zsh -c "nmap -oX ./nmap_result.xml -sC -sV ${target_ip}" & 
xterm -hold -e zsh -c "whois ${target_ip}" & 
xterm -hold -e zsh -c "nslookup ${target_ip}" & 
xterm -hold -e zsh -c "nikto -h ${target_ip}" & 
xterm -hold -e zsh -c "python3 AORT.py -d ${target_ip}"
