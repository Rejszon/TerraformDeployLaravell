server{
        listen 80 default_server;
        listen [::]:80 default_server; 

        root /var/www/html/laravel_exemple_app/public;

        server_name_;

        location /{
            include snippets/fastcgi_php.conf;

            fastcgi_pazz unix:/var/run/php/php8.1fpm-sock;
        }
}