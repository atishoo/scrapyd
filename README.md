# scrapyd的docker版本服务

一个构建docker版本的scrapyd服务

使用该仓库前，需在系统内提前安装好docker

## 构建镜像
```shell
docker build -t scrapyd --build-arg port=6800 --build-arg username=asdferftsd --build-arg password=6800 github.com/atishoo/scrapyd
```

## 运行镜像
```shell
docker run --name myscrapyd --restart=always -d -p 6800:6800 scrapyd
```