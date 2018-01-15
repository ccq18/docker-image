FROM php:7.1-cli-alpine
RUN echo "http://mirrors.aliyun.com/alpine/v3.7/main/" > /etc/apk/repositories
RUN apk update \
 && apk --no-cache add supervisor  \
 && mkdir -p /var/run/sshd  \
 && mkdir -p /var/log/supervisor
CMD supervisord -c /etc/supervisord.conf
