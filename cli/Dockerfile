FROM php:7.1-cli-stretch
COPY ext /tmp

ARG PHP_OTHER_EXT="redis-3.1.6"
ARG PHP_CORE_EXT="mbstring mysqli pdo pdo_mysql shmop opcache pcntl posix"
ARG PHP_PECL_EXT="event"
ARG PHP_INSTALL_GD="true"
RUN  cd /tmp  &&  bash install.sh