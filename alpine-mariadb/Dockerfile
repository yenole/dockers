FROM itspas/alpine:3.3

MAINTAINER Yenole "Netxy@vip.qq.com"

# install nginx && php-fpm
RUN apk add --update \
  mariadb \
  mariadb-client \
	&& rm -rf /var/cache/apk/*

ADD start.sh start.sh

RUN mkdir /run/mysqld && chmod -R 777 /run/ && chmod 755 /start.sh

VOLUME ["/var/lib/mysql"]

EXPOSE 3306

CMD ["/start.sh"]
