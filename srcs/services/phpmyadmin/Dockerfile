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
RUN apk add nginx wget openrc mysql mysql-client

COPY config-files/* config-files/
#COPY start.sh .

RUN cp config-files/my.cnf /etc/
RUN	mkdir -p /run/nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
RUN cp config-files/nginx.conf /etc/nginx/nginx.conf
RUN mkdir /var/www/ninja_flex
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz --strip-components 1 -C /var/www/ninja_flex/
