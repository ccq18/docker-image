docker pull mysql:5.7
docker run --name mysql -p 3306:3306 -e MYSQL\_ROOT\_PASSWORD=123456 -d mysql:5.7


## 环境变量
当启动mysql容器时，我们可以向docker run命令传入一或多个环境变量来调整MySQL实例的配置。可设置的环境变量有：

MYSQL_ROOT_PASSWORD：必须。用于设置MySQLroot用户的密码
MYSQL_DATABASE：可选。用于指定镜像启动容器时要创建的数据库。如果提供了用户/密码，则会将该用户做为此数据库的超级用户。
MYSQL_USER，MYSQL_PASSWORD：可选。用于创建一个新用户并设置密码。
MYSQL_ALLOW_EMPTY_PASSWORD：可选。设置为yes时，则可以使用空密码登录
MYSQL_RANDOM_ROOT_PASSWORD：可选。设置为yes时会为root用户设置一个随机密码（使用pwgen），所生成的随机密码会被输出到stdout
MYSQL_ONETIME_PASSWORD：可选。为root用户指定一个一次性密码，该密码会在用户首次登录时强制修改

## 存储目录


docker run --name mysql --restart=always -v /Users/mac/code/docker/docker-image/mysql/data:/var/lib/mysql -p 3306:3306 -e MYSQL\_ROOT\_PASSWORD=123456    -d mysql:5.7 



## 配置文件


## 说明
https://hub.docker.com/_/mysql
容器shell访问和查看MySQL日志
$ docker exec -it some-mysql bash
MySQL Server日志可通过Docker的容器日志获得：

$ docker logs some-mysql