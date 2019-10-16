#!bin/bash

my_val=$(cat resultDBServerIP | awk -F':' '{print $11}' | awk -F'"' '{print $2}')

sudo sed -i 's|127.0.0.1|'$my_val'|g' /home/cc/ssh_connect_dbserver.sh
