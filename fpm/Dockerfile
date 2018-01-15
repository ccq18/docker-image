FROM php:7.1-fpm-alpine

COPY ext /tmp
ARG PHP_OTHER_EXT="redis-3.1.6"
ARG PHP_CORE_EXT="mbstring mysqli pdo pdo_mysql shmop"
ARG PHP_INSTALL_GD="true"
RUN  cd /tmp && sh install.sh


