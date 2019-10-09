#!bin/bash

my_val=$(cat resultWebserverIP | awk -F':' '{print $22}' | awk -F'"' '{print $2}')

sudo sed -i -e 's/127.0.0.1/192.168.2.47/g' /var/www/html/phpMySQLapp/books/includes/bookDatabase.php
sudo sed -i -e 's/127.0.0.1/192.168.2.47/g' /var/www/html/phpMySQLapp/movies/includes/movieDatabase.php
