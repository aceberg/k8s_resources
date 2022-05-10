# nginx deployment

1. Create ConfigMap:
```
kubectl apply -f config-map.yml
```
2. Create Deployment:
```
kubectl apply -f nginx-depl.yml
```