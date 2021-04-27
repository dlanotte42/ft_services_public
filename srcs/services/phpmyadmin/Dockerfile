# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dlanotte <dlanotte@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 23:44:05 by zxcvbinz          #+#    #+#              #
#    Updated: 2021/04/23 17:41:51 by dlanotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest
EXPOSE 5000

RUN apk upgrade
RUN apk update
RUN apk add nginx wget
RUN apk add php7-common php7-fpm php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-mbstring php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
COPY config-files/* config-files/
#COPY start.sh .

RUN	mkdir -p /run/nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
RUN cp config-files/nginx.conf /etc/nginx/nginx.conf
RUN mkdir /var/www/ninja_flex
RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar -xvf phpMyAdmin-5.0.2-all-languages.tar.gz --strip-components 1 -C /var/www/ninja_flex/
RUN rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN chmod 777 /var/www/ninja_flex

RUN mv config-files/config.ini.php /var/www/ninja_flex/

CMD php-fpm7 && nginx -g 'daemon off;'