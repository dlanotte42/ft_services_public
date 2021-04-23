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

COPY config-files/* config-files/
COPY start.sh .

RUN	mkdir -p /run/nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
RUN cp config-files/nginx.conf /etc/nginx/nginx.conf
RUN chmod 777 start.sh

CMD ./start.sh