#!/bin/bash

cd /tmp
# nginx
cp  -f nginx/nginx.conf      /etc/nginx/nginx.conf
cp -f  nginx/sites-enabled/*    /etc/nginx/sites-enabled/
# cron
cp ./cron /etc/cron.d
## supervisord
cp ./supervisord.conf /etc/supervisord.conf

touch /var/log/cron.log


cd /www && composer install
cd /www/front && npm install && npm run build


php-fpm &

#cron
crontab /etc/cron.d/cron
crontab -l
cron

supervisord -c /etc/supervisord.conf &

service nginx start

tail -f /var/log/nginx-error.log