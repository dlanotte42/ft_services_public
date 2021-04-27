# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dlanotte <dlanotte@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 23:36:36 by zxcvbinz          #+#    #+#              #
#    Updated: 2021/04/23 16:56:42 by dlanotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

EXPOSE 5050

RUN apk upgrade
RUN apk update
RUN apk add nginx

RUN apk add php7-common php7-fpm php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-mbstring php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

COPY config-files/* config-files/
#COPY start.sh .

RUN	mkdir -p /run/nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
RUN cp config-files/nginx.conf /etc/nginx/nginx.conf
#RUN chmod 777 start.sh

RUN mkdir /var/www/ninja_flex
RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz --strip-components 1 -C /var/www/ninja_flex/
RUN chmod 777 /var/www/ninja_flex
RUN rm latest.tar.gz
RUN mv config-files/wp-config.php /var/www/ninja_flex

CMD  php-fpm7 && nginx -g 'daemon off;'