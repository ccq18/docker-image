#!/usr/bin/env bash


#############  扩展安装  ##################
ext_install(){
    tar -xf "${1}.tgz";
    ls -al ${1}
    rm "${1}.tgz";
    echo ${1}
    docker-php-ext-configure ${1}
    docker-php-ext-install ${1}
}
#
############## 开始 ########################
#
pwd=$(pwd)

echo  "deb http://mirrors.163.com/debian/ stretch main non-free contrib
deb http://mirrors.163.com/debian/ stretch-updates main non-free contrib
deb http://mirrors.163.com/debian/ stretch-backports main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch-updates main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch-backports main non-free contrib
deb http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib
deb-src http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib" > /etc/apt/sources.list

apt-get update

if [ "$PHP_INSTALL_GD" = "true" ]; then
     apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
fi

if [ -n "${PHP_CORE_EXT}" ]; then
    docker-php-ext-install  $PHP_CORE_EXT;
fi

if [[ "${PHP_OTHER_EXT}" =~ "event" ]]; then
     apt-get install -y --no-install-recommends apt-utils libevent-dev libssl-dev
fi
if [[ "${PHP_OTHER_EXT}" =~ "swoole" ]]; then
     apt-get install -y libpcre3 libpcre3-dev
fi
if [ -n "${PHP_OTHER_EXT}" ]; then
    for ext in $PHP_OTHER_EXT
    do
        ext_install  $pwd/$ext;

    done
fi

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

#############  扩展安装  ##################
#############  设置系统时间  ##################
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#############  设置系统时间  ##################


