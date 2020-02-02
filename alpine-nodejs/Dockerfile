FROM daocloud.io/library/alpine:3.5

MAINTAINER Yenole "Netxy@vip.qq.com"

# ADD repositories /etc/apk/repositories

RUN apk --update add \
  nodejs \
  supervisor \
  && rm -rf /var/cache/apk/*

ADD nodejs.ini /etc/supervisor.d/nodejs.ini

VOLUME ["/var/lib/app","/var/log/nodejs"]

CMD ["/usr/bin/supervisord"]
