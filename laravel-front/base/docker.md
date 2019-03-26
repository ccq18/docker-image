
# 镜像
# 列出本地所有镜像
docker images
# 本地镜像名为 ubuntu 的所有镜像
docker images ubuntu
# 查看指定镜像的创建历史
docker history [id]
# 本地移除一个或多个指定的镜像
docker rmi 5bbf36c9fa09 349180e70874 8731ba7ac28f 43ea58fc6c56 1481fe7f119f e0a925ccd6d2 9f47b1f25916 9845fd7d72eb 4fd5d2066b4d 94b5fb32cbab d010444a4594 

# 移除本地全部镜像
docker rmi `docker images -a -q`
# 指定镜像保存成 tar 归档文件， docker load 的逆操作
# 将镜像 ubuntu:14.04 保存为 ubuntu14.04.tar 文件
docker save -o ubuntu14.04.tar ubuntu:14.04
# 从 tar 镜像归档中载入镜像， docker save 的逆操作
# 上面命令的意思是将 ubuntu14.04.tar 文件载入镜像中
docker load -i ubuntu14.04.tar
docker load < /home/save.tar
# 构建自己的镜像
docker build -t <镜像名> <Dockerfile路径>
docker build -t xx/gitlab .
docker build --force-rm --no-cache -t ccq18/laravel:v1 .
## 推送
docker push ccq18/laravel:v1

# 容器
## 查看当前运行的容器
docker ps
## 查看全部容器
docker ps -a
## 查看全部容器的id和信息
docker ps -a -q
## 查看全部容器占用的空间
docker ps -as
## 查看一个正在运行容器进程，支持 ps 命令参数
docker top


# 删除容器
docker rm 容器名/id
# 启动
docker run --name phpfpm   -it -d ccq18/php-fpm:7.1-v2 sh


## 异常解决
```
Error response from daemon: Get https://registry-1.docker.io/v2/: 
```
```
docker-machine restart default
 eval $(docker-machine env default) 
 docker login
 ```
 
 ## 清理容器
 docker container prune 
 ## 删除异常停止的docker容器
 docker rm `docker ps -a | grep Exited | awk '{print $1}'`   
 ## 删除名称或标签为none的镜像
 docker rmi   $(docker images | grep '<none>' | awk '{print $3}')
 
 ## 查看容量
 docker system df