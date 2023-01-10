#! /bin/bash

cd /var/www

mkdir -p /var/www/html/wordpress/schahid

mv /var/www/index.html /var/www/html/wordpress/schahid/index.html

BWhite='\033[1;37m'
echo -e "${BWhite}Static-website done ✅"