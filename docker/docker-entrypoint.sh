#!/bin/bash

if [[ -f /etc/kind/config.yaml ]]; then 
  echo "kind with config"
  kind create cluster --name k8s-poc --config /etc/kind/config.yaml
else 
  echo "kind without config"
  kind create cluster --name k8s-poc
fi

kind create cluster --name k8s-poc

#helm repo add fluxcd https://charts.fluxcd.io

#kubectl apply -f https://raw.githubusercontent.com/fluxcd/helm-operator/$HELM_OPERATOR_VERSION/deploy/crds.yaml

#kubectl create namespace flux

#helm upgrade -i helm-operator fluxcd/helm-operator --namespace flux --set helm.versions=v3

#https://kind.sigs.k8s.io/docs/user/local-registry/
#docker run -d --restart=always -p "5000:5000" --name kind-registry registry:2

#docker network connect kind kind-registry

mkdir -p logs
kind --name k8s-poc export logs logs
tail -f /logs/k8s-poc-control-plane/journal.log




