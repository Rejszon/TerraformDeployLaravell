#! /bin/bash
sudo apt-get update
sudo apt install nginx -y
echo "Hello world" > index.html
mv index.html /var/www/html
cd /var/www/html
rm index.nginx-debian.html