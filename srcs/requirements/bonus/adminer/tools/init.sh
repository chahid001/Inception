#! /bin/bash

cd /var/www/html
rm -rf index.html
wget "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql-en.php" -O index.php
BWhite='\033[1;37m'
echo -e "${BWhite}Adminer installed successfully ✅"
apachectl -D FOREGROUND