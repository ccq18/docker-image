## 目录结构
laravel-
    front # 独立的前端项目 编译后打包目录在 /dist文件夹下 

## dev
## dev和prod区别
prod 启动会初始化，dev下需要手动运行:
cd /www
composer install

cd /www/front
npm install
npm run build

dev启动使用
npm start  利用proxy /api 映射到/public文件夹
prod 直接使用nginx映射到 /front/dist 文件夹
/api 映射到/public文件夹

