FROM ccq18/php-cli:7.1-v1
RUN apk update \
 && apk --no-cache add supervisor  \
 && mkdir -p /var/run/sshd  \
 && mkdir -p /var/log/supervisor
CMD supervisord -c /etc/supervisord.conf
