#!bin/bash

my_val=$(cat resultDBServerIP | awk -F':' '{print $11}' | awk -F'"' '{print $2}')

sudo sed -i 's|127.0.0.1|'$my_val'|g' /var/www/html/phpMySQLapp/books/includes/bookDatabase.php
sudo sed -i 's|127.0.0.1|'$my_val'|g' /var/www/html/phpMySQLapp/movies/includes/movieDatabase.php
