# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zxcvbinz <zxcvbinz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 23:44:24 by zxcvbinz          #+#    #+#              #
#    Updated: 2021/04/28 00:57:14 by zxcvbinz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest
EXPOSE 21 30000 30001 30002 30003

RUN apk update
RUN	apk upgrade
RUN apk add vsftpd openssl openrc
RUN mkdir -p /etc/vsftpd/
RUN mkdir -p /home/ftptest/
COPY setup.sh .
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/vsftpd/ninja_vsftpd.crt -keyout /etc/vsftpd/ninja_vsftpd.key -subj "/C=IT/ST=Italy/L=Roma/O=42Roma/OU=dlanotte/CN=ninja_flex"
RUN adduser -D ninja_ftp
RUN echo ninja_ftp:ninja_ftp | chpasswd
RUN echo "ninja_ftp" >> /etc/vsftpd/vsftpd.userlist
RUN chown -R ninja_ftp:ninja_ftp /home/
RUN chmod -R 777 /home/
#RUN chmod 777 setup.sh

#CMD ./setup.sh