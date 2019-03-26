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
php-fpm &
service nginx start
#cron
crontab /etc/cron.d/cron
crontab -l
cron
supervisord -c /etc/supervisord.conf &
