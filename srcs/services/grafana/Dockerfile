# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zxcvbinz <zxcvbinz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/28 19:38:19 by zxcvbinz          #+#    #+#              #
#    Updated: 2021/04/28 19:38:45 by zxcvbinz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

USER root

RUN apk update && apk upgrade --no-cache
RUN apk add openrc libc6-compat fontconfig telegraf --no-cache
RUN wget https://dl.grafana.com/oss/release/grafana-7.5.3.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.5.3.linux-amd64.tar.gz
RUN rm -rf grafana-7.5.3.linux-amd64.tar.gz
RUN mv grafana-7.5.3 grafana
RUN mkdir ./etc/telegraf
RUN mv /etc/telegraf.conf /etc/telegraf/telegraf.conf
RUN mkdir etc/dashboards



COPY ./srcs/grafana.db /grafana/data/grafana.db
COPY ./srcs/dashboards.yaml /grafana/conf/provisioning/dashboards/sample.yaml
COPY ./srcs/sample.yaml /grafana/conf/provisioning/datasources/sample.yaml
COPY ./srcs/dashboards /etc/dashboards
COPY ./srcs/start.sh ./start.sh

EXPOSE 3000

CMD sh start.sh