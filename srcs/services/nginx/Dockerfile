# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dlanotte <dlanotte@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 23:36:36 by zxcvbinz          #+#    #+#              #
#    Updated: 2021/04/23 16:37:10 by dlanotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest
EXPOSE 80 443 22

RUN apk upgrade
RUN apk update
RUN apk add openssl nginx

COPY config-files/* config-files/
COPY ninja_flex/* /var/www/ninja_flex/
COPY start.sh .

RUN mkdir /etc/nginx/ssl
RUN	mkdir -p /run/nginx
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/ninja_flex.pem -keyout /etc/nginx/ssl/ninja_flex.key -subj "/C=IT/ST=Italy/L=Roma/O=42Roma/OU=dlanotte/CN=ninja_flex"
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
RUN cp config-files/nginx.conf /etc/nginx/nginx.conf
RUN chmod 777 start.sh

CMD ./start.sh