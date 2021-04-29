# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dlanotte <dlanotte@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/27 19:01:31 by dlanotte          #+#    #+#              #
#    Updated: 2021/04/27 19:08:49 by dlanotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

EXPOSE 3306

RUN apk update
RUN apk upgrade
RUN apk add mysql mysql-client

COPY config-files/my.cnf /etc/
COPY setup.sh /setup.sh
COPY config-files/init_file /
COPY wordpress.sql /
COPY dump.sh /

RUN mkdir /run/mysqld
RUN chmod +x /setup.sh

CMD ./setup.sh

