# Overview

Configuration for Service Account Token Volume Projection to use [istio](https://github.com/istio/istio/blob/master/prow/config/trustworthy-jwt.yaml)   

# Usage

```
docker run -d --name k8s-poc \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -v config.yaml:/etc/kind/config.yaml \
           --network=host \
           adrianriobo/k8s-poc:1.17.0
```

