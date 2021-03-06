#!/usr/bin/env bash

while getopts ":p:n:" opt
do
    case $opt in
        p)
        export p=$OPTARG
        ;;
        n)
        export n=$OPTARG
        ;;
        ?)
        echo "未知参数"
        exit 1;;
    esac
done
port=${p-801}
name=${n-laravelfront}

docker rm -f ${name}
docker pull ccq18/laravel-base:v1
docker build --force-rm --no-cache -t ${name}:v1 .

realdir(){
export realdir=`cd  $1; pwd`
}

realdir "../../"

docker run --name ${name}   -p ${port}:8080 -v ${realdir}:/www  -v ${realdir}/storage/logs:/var/log -d ${name}:v1 sh
