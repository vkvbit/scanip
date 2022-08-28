#!/usr/bin/bash
target_ip='IP address of target'
xterm -hold -e zsh -c "ping ${target_ip}" & 
xterm -hold -e zsh -c "nmap ${target_ip}"
