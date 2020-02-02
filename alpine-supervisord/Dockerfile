FROM alpine:3.3

MAINTAINER yenole "netxy@vip.qq.com"

RUN sed -i s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g /etc/apk/repositories 

RUN apk --update add supervisor

VOLUME ["/etc/supervisor.d/"]

CMD ["/usr/bin/supervisord"]