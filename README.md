# k8s-poc
Base image for pocs based on k8s

[![Docker build](https://img.shields.io/docker/cloud/build/adrianriobo/k8s-poc?label=build&logo=docker)](https://hub.docker.com/r/adrianriobo/k8s-poc/builds)

# Components

[docker](https://www.docker.com/)
[kind](https://github.com/kubernetes-sigs/kind)
[kubectl](https://kubernetes.io/docs/reference/kubectl/kubectl/)
[helm](https://github.com/helm/helm)

# Usage

```
docker run -d --name k8s-poc \
           -v /var/run/docker.sock:/var/run/docker.sock \
           --network=host \
           adrianriobo/k8s-poc:1.17.0
```

# Work

