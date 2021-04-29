# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dlanotte <dlanotte@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/29 16:47:37 by dlanotte          #+#    #+#              #
#    Updated: 2021/04/29 16:47:41 by dlanotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:latest

EXPOSE 3000

RUN apk update
RUN apk add libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.5.3.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.5.3.linux-amd64.tar.gz
RUN rm grafana-7.5.3.linux-amd64.tar.gz
COPY ./config.yaml ./grafana-7.5.3/conf/provisioning/datasources/
RUN	mkdir /etc/dashboards
COPY dashboards/ /etc/dashboards/
COPY setup.sh ./setup.sh
RUN	chmod 777 ./setup.sh
COPY provisioning-config.yaml /grafana-7.5.3/conf/provisioning/dashboards
CMD ./setup.sh
