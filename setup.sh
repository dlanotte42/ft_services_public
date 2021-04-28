#	setup metallb

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/metallb.yaml
kubectl apply -f ./srcs/config-yaml/metallb.yaml

#   build images

docker build -t testnginx ./srcs/services/nginx/.
docker build -t testphpmyadmin ./srcs/services/phpmyadmin/.
docker build -t testwordpress ./srcs/services/wordpress/.
docker build -t testmysql ./srcs/services/mysql/.
docker build -t testftps ./srcs/services/ftps/.
docker build -t testgrafana ./srcs/services/grafana/.
docker build -t testinfluxdb ./srcs/services/influxDB/.

#   setup kubernets 

kubectl apply -f ./srcs/config-yaml/nginx.yaml
kubectl apply -f ./srcs/config-yaml/phpmyadmin.yaml
kubectl apply -f ./srcs/config-yaml/wordpress.yaml
kubectl apply -f ./srcs/config-yaml/mysql.yaml
kubectl apply -f ./srcs/config-yaml/ftps.yaml
kubectl apply -f ./srcs/config-yaml/grafana.yaml
kubectl apply -f ./srcs/config-yaml/influxdb.yaml

#   dashboard

bash ./srcs/dashboard.sh