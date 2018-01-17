## 开发相关docker镜像
fpm cli 基于官方7.1 alpine构建 增加了几个常用扩展

### laravel
laravel 可以运行laravel lumen 已经配置好定时和队列
启动 
docker-compose  -p projectname  up -d
查看
docker ps
停止
docker-compose stop
重启
docker-compose restart