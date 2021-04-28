FROM alpine:latest

USER root

RUN apk update && apk upgrade --no-cache
RUN apk add influxdb openrc libc6-compat telegraf --no-cache
RUN mkdir ./etc/telegraf
RUN mv /etc/telegraf.conf /etc/telegraf/telegraf.conf

COPY ./srcs/start.sh ./start.sh

EXPOSE 8086

CMD sh start.sh