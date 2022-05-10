# mysql statefulSet

1. Create new namespace and switch to it:
```
kubectl apply -f 1_namespace.yml
kubectl config set-context --current --namespace=hometask
```
2. Create secret:
```
kubectl apply -f 2_secret.yml
```
3. Create statefulSet and service:
```
kubectl apply -f 3_mysql-set.yml
kubectl apply -f 4_service-mysql.yml
```
4. Port-forward mysql port to localhost
```
kubectl port-forward pod/mysql-set-0 3306:3306
```
5. Fill database:
```
cd articles
./create_db.sh
```