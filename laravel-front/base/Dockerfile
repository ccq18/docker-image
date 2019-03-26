FROM php:7.1-fpm-stretch
#php debian 9
# /usr/local/etc/phpls
COPY ext /tmp
ARG DEBIAN_FRONTEND="noninteractive"
ARG PHP_OTHER_EXT="redis-3.1.6 event-2.3.0 swoole-4.0.1"
ARG PHP_CORE_EXT="mbstring mysqli pdo pdo_mysql shmop opcache pcntl posix sockets"
ARG PHP_INSTALL_GD="true"
RUN  chmod -R 777 /tmp && cd /tmp && bash install.sh && rm -rf /tmp/*

RUN apt-get update  && apt-get install -y  cron  vim wget  procps

# nodejs npm
RUN  apt-get install -y gnupg2 \
    && curl -sL https://deb.nodesource.com/setup_11.x | bash - \
    && apt-get install -y nodejs

## supervisor
RUN apt-get install -y  supervisor  \
 && mkdir -p /var/run/sshd  \
 && mkdir -p /var/log/supervisor
## nginx
RUN  apt-get update \
      && apt-get install -y nginx
