
### Criando um Service
#### Service Type: NodePort

```
apiVersion: v1
kind: Service
metadata:
  labels:
    app: webserver
  name: webserver
spec:
  ports:
  - name: http
    nodePort: 31080
    port: 8080
    protocol: TCP
    targetPort: 8080
  selector:
    app: webserver
  type: NodePort
```

##### Aplicando o Manifesto do Service NodePort:

`kubectl apply -f ./manifestos/webserver-service-np.yaml`{{execute}}

[Acesso ao Site por NodePort]({{TRAFFIC_HOST1_31080}})

##### Verificando o Service:

`kubectl get services`{{execute}}

`kubectl get service webserver -o yaml`{{execute}}

`kubectl get services -o wide`{{execute}}

`kubectl describe service webserver`{{execute}}

#### Service Type: ClusterIP

```
apiVersion: v1
kind: Service
metadata:
  labels:
    app: webserver
  name: webserver
spec:
  ports:
  - name: http
    port: 8080
    protocol: TCP
    targetPort: 8080
  selector:
    app: webserver
  type: ClusterIP
```
##### Aplicando o Manifesto do Service ClusterIP:

`kubectl apply -f ./manifestos/webserver-service.yaml`{{execute}}

##### Verificando o Service:

`kubectl get services`{{execute}}

`kubectl describe service webserver`{{execute}}
