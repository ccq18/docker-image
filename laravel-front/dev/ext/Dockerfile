FROM ccq18/laravel-base:v1
# nginx
ADD  nginx/nginx.conf      /etc/nginx/nginx.conf
ADD  nginx/sites-enabled/*    /etc/nginx/sites-enabled/
# cron
COPY ./cron /etc/cd.d/
## supervisord
COPY supervisord.conf /etc/supervisord.conf
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 8080
