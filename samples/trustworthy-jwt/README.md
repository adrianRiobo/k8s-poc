# Overview

Configuration for Service Account Token Volume Projection to use [istio](https://github.com/istio/istio/blob/master/prow/config/trustworthy-jwt.yaml)   

# Usage

```
docker run -d --name k8s-poc \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v $PWD/config.yaml:/etc/kind/config.yaml \
           --network=host \
           adrianriobo/k8s-poc:1.17.0
```

helm repo add temporary http://localhost:8080

helm install -f argo-values.yaml argocd temporary/argoc-d

#kind load docker-image my-custom-image --name my-cluster-name
