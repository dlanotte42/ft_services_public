# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dlanotte <dlanotte@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/29 16:47:47 by dlanotte          #+#    #+#              #
#    Updated: 2021/04/29 16:48:12 by dlanotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

EXPOSE 8086

RUN	apk add --update
RUN apk add --upgrade influxdb
COPY setup.sh ./setup.sh
RUN chmod 755 ./setup.sh

CMD ./setup.sh