#! /bin/sh

sed -i "s|# urls = \[\"http://127.0.0.1:8086\"\]|urls = [\"http://influxdb:8086\"]|g" /etc/telegraf/telegraf.conf
sed -i "s|# skip_database_creation = false|skip_database_creation = true|g" /etc/telegraf/telegraf.conf
sed -i "s|# database = \"telegraf\"|database = \"grafana\"|g" /etc/telegraf/telegraf.conf
sed -i "s|# username = \"telegraf\"|username = \"admin\"|g" /etc/telegraf/telegraf.conf
sed -i "s|# password = \"metricsmetricsmetricsmetrics\"|password = \"password\"|g" /etc/telegraf/telegraf.conf
sed -i "s|# dc = \"us-east-1\" # will tag all metrics with dc=us-east-1| dc = \"influxdb\"|g" /etc/telegraf/telegraf.conf
telegraf & 
influxd &
sleep 2s
influx -execute "CREATE USER admin WITH PASSWORD 'password' WITH ALL PRIVILEGES"
influx -execute "CREATE DATABASE grafana"
while sleep 10; do
  ps aux |grep influxd |grep -q -v grep
  PROCESS_1_STATUS=$?
if [ $PROCESS_1_STATUS -ne 0 ]; then
    echo "InfluxDB has already exited."
    exit 1
  fi
done
