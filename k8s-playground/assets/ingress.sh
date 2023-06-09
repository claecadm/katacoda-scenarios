echo -n "Verificando o estado do Cluster..."

while [ $(kubectl get node 2>/dev/null | grep Ready | wc -l) -ne 2 ]
    do
        sleep 1
        echo -n "."
    done

echo
echo "Verificando o Deploy do Ingress Controller"

kubectl create ns ingress-nginx
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx \
  --version 4.4.0 \
  --set controller.hostPort.enabled=true \
  --set controller.service.enabled=false \
  --set controller.ingressClassResource.default=true 

kubectl -n ingress-nginx rollout status deployment ingress-nginx-controller

echo "Tudo pronto!"
sleep 1
clear
