# get_article

0. Default Dockerfile is based on alpine. To choose ubuntu, rename files

1. Build docker image:
```
docker build -t get_article .
```
2. Load image to minikube:
```
minikube image load get_article
```
