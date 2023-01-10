#! /bin/bash

wget https://github.com/google/cadvisor/releases/download/v0.37.5/cadvisor -O /usr/bin/cadvisor
chmod +x /usr/bin/cadvisor
BWhite='\033[1;37m'
echo -e "${BWhite}Cadvisor installed successfully ✅"
cadvisor --logtostderr --port=6500