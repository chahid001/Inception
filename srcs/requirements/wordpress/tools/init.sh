#! /bin/bash

mkdir -p /run/php
touch /run/php/php7.3-fpm.pid

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

mkdir -p html/wordpress
cd /var/www/html/wordpress

wp core download --allow-root

mv /var/www/wp-config.php /var/www/html/wordpress

wp core install --allow-root --url=${URL} --title=${WORDPRESS_NAME} --admin_user=${WORDPRESS_ROOT_LOGIN} --admin_password=${MYSQL_ROOT_PASSWORD} --admin_email=${WORDPRESS_ROOT_EMAIL}
wp user create ${MYSQL_USER} ${WORDPRESS_USER_EMAIL} --user_pass=${MYSQL_PASSWORD} --role=author --allow-root

wp theme install kadence --allow-root
wp theme activate kadence --allow-root

wp plugin install redis-cache --allow-root
wp plugin update --all --allow-root
wp plugin activate redis-cache --allow-root
wp redis enable --allow-root

echo "Wordpress started"

BWhite='\033[1;37m'
Blue='\033[0;34m'
echo " "
echo " "
echo " "
echo -e "${BWhite}     Made with love ❤️ by schahid"
echo " "
echo -e "${BWhite}/////////////////////////////////////"
echo " "
echo -e "${BWhite}website: ${Blue}schahid.42.fr"
echo -e "${BWhite}static-website: ${Blue}schahid.42.fr/schahid"
echo -e "${BWhite}adminer: ${Blue}schahid.42.fr/adminer"
echo -e "${BWhite}website: ${Blue}schahid.42.fr/cadvisor"
echo " "
echo " "

php-fpm7.3 -F