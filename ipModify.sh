#!bin/bash

my_val=$(cat resultDBServerIP | awk -F':' '{print $11}' | awk -F'"' '{print $2}')

sudo sed -i 's|127.0.0.1|'$my_val'|g' /var/www/html/phpMySQLapp/books/includes/bookDatabase.php
sudo sed -i 's|root|user_team3|g' /var/www/html/phpMySQLapp/books/includes/bookDatabase.php
sudo sed -i 's|admin|team3|g' /var/www/html/phpMySQLapp/books/includes/bookDatabase.php
sudo sed -i 's|127.0.0.1|'$my_val'|g' /var/www/html/phpMySQLapp/movies/includes/movieDatabase.php
sudo sed -i 's|root|user_team3|g' /var/www/html/phpMySQLapp/movies/includes/movieDatabase.php
sudo sed -i 's|admin|team3|g' /var/www/html/phpMySQLapp/movies/includes/movieDatabase.php


sudo sed -i '$ a\[MyChameleonDB]' /etc/ansible/hosts
sudo sed -i '$ a\'$my_val' ansible_connection=ssh ansible_ssh_private_key_file=/home/cc/.ssh/team3_key2.pem' /etc/ansible/hosts
sudo sed -i '$ a\[MyLocalVms]' /etc/ansible/hosts
sudo sed -i '$ a\127.0.0.1 ansible_connection=local' /etc/ansible/hosts
