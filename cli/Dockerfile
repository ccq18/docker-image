FROM php:7.1-cli-alpine
COPY ext /tmp
RUN echo "http://mirrors.aliyun.com/alpine/v3.7/main/" > /etc/apk/repositories
ARG PHP_OTHER_EXT="redis-3.1.6"
ARG PHP_CORE_EXT="mbstring mysqli pdo pdo_mysql shmop opcache"
ARG PHP_INSTALL_GD="true"
RUN  cd /tmp  &&  sh install.sh