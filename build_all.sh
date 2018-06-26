#!/usr/bin/env bash

(
cd ./cli
./build.sh
)

(
cd ./fpm
./build.sh
)

(
cd ./php-supervisor/
./build.sh
)


(
cd ./nginx/
./build.sh
)


(
cd ./php-cron/
./build.sh
)


(
cd ./python/
./build.sh
)