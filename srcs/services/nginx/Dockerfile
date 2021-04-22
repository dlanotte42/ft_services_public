# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zxcvbinz <zxcvbinz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/22 23:36:36 by zxcvbinz          #+#    #+#              #
#    Updated: 2021/04/22 23:43:45 by zxcvbinz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest
EXPOSE 80 443 22

RUN apk upgrade
RUN apk update
RUN apk add openssl nginx
RUN mkdir config-file
