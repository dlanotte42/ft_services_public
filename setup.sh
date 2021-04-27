kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/metallb.yaml
kubectl apply -f ./srcs/config-yaml/metallb.yaml

#   immagini

docker build -t testnginx ./srcs/services/nginx/.
docker build -t testphpmyadmin ./srcs/services/phpmyadmin/.
docker build -t testwordpress ./srcs/services/wordpress/.
docker build -t testmysql ./srcs/services/mysql/.

#   setup kubernets 

kubectl apply -f ./srcs/config-yaml/nginx.yaml
kubectl apply -f ./srcs/config-yaml/phpmyadmin.yaml
kubectl apply -f ./srcs/config-yaml/wordpress.yaml
kubectl apply -f ./srcs/config-yaml/mysql.yaml

#   dashboard

bash ./srcs/dashboard.sh