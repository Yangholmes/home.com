# home.com

搭建家庭网络服务

#### 起步

先决条件：安装 docker 和 docker-compose ，并具有 root 权限 或 `sudo` 命令权限。

#### 安装

目录名称为服务名称，cd 进入目录之后，打开 compose 文件，修改 volume 挂载位置和端口映射。我的方案是，将 volume 数据盘挂载到外部存储器中，配置盘挂载到 ROM 上。

最后运行 `docker-compose --build -d` 即可安装服务。

#### wiki

暂无