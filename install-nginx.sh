#! /bin/bash
sudo apt-get update
sudo apt install nginx -y
sudo apt update
sudo apt install lsb-release ca-certificates apt-transport-https software-properties-common -y
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php8.1
sudo apt install php-cli unzip
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
cd /var/www/html
rm index.nginx-debian.html
git clone https://github.com/Rejszon/laravel_exemple_app.git
rm /etc/nginx/sites-available/default
mv default /etc/nginx/sites-available/default
chown -R www-data /var/www/html
cd laravel_exemple_app
composer install