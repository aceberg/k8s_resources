# Ingress

1. Create service for nginx:
```
kubectl apply -f service-nginx.yml
```
2. Enable ingress controller in minikube:
```
minikube addons enable ingress
```
In minikube v1.19 or later ingress was moved to separate namespace. To check use
```
kubectl get pods -n ingress-nginx
```
3. Create ingress:
```
kubectl apply -f ingress.yml
```
4. Add your minikube ip to /etc/hosts
```
<minikube_ip> minikube.local
```
5. Check with curl or web browser:
```
curl minikube.local
```