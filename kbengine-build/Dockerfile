FROM ubuntu

MAINTAINER yenole <Netxy@vip.qq.com>

# 替换阿里源
# RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
# ADD sources.list /etc/apt/sources.list

# 更新并安装环境
RUN apt-get update
RUN apt-get install -y make gcc g++ libmysqlclient-dev libssl-dev python

# 服务器脚本和资源挂载目录
VOLUME ["/var/lib/kbengine"]

ENTRYPOINT chmod -R 755 /var/lib/kbengine && cd /var/lib/kbengine/kbe/src && make



