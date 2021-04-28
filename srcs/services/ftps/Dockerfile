# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zxcvbinz <zxcvbinz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 23:44:24 by zxcvbinz          #+#    #+#              #
#    Updated: 2021/04/28 17:58:15 by zxcvbinz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest
EXPOSE 21 30000 30001 30002 30003

RUN apk update
RUN	apk upgrade
RUN apk add vsftpd openssl openrc
RUN mkdir -p /etc/vsftpd/
RUN mkdir -p /home/ftptest/
COPY config-files/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY setup.sh .
RUN chmod 777 setup.sh

CMD ./setup.sh