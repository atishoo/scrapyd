# scrapyd的docker版本服务

一个构建docker版本的scrapyd服务

使用该仓库前，需在系统内提前安装好docker

## 构建镜像
```shell
docker build -t scrapyd --rm --build-arg port=6800 --build-arg username=your-basic-usernmae --build-arg password=your-basic-password https://github.com/atishoo/scrapyd.git#main
```

## 运行镜像
```shell
docker run --name myscrapyd --restart=always -d -p 6800:6800 scrapyd
```
注意此处的6800，如果在构建镜像时传了其他端口号，则需要修改此处的端口号

#### 如果构建镜像失败
1. 单独拉取仓库
2. 进入拉取后的本地目录，运行构建镜像命令
3. 运行镜像

之后即可通过 http://127.0.0.1:6800 进行访问scrapyd