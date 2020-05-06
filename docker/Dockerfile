FROM alpine@sha256:b276d875eeed9c7d3f1cfa7edb06b22ed22b14219a7d67c52c56612330348239

LABEL maintainer="adrian.riobo.lorenzo@gmail.com"

ARG KIND_VERSION=0.7.0 
ARG K8S_VERSION=1.17.0 
ARG HELM_VERSION=3.2.0 
ARG HELM_OPERATOR_VERSION=1.0.1
ENV HELM_OPERATOR_VERSION=$HELM_OPERATOR_VERSION

RUN apk add docker curl bash nano \
    && wget https://dl.k8s.io/v${K8S_VERSION}/kubernetes-client-linux-amd64.tar.gz -P /tmp \
    && tar -xzvf /tmp/kubernetes-client-linux-amd64.tar.gz -C /tmp \
    && mv /tmp/kubernetes/client/bin/kubectl /usr/local/bin \
    && wget https://get.helm.sh/helm-v$HELM_VERSION-linux-amd64.tar.gz -P /tmp \
    && tar -xzvf /tmp/helm-v$HELM_VERSION-linux-amd64.tar.gz -C /tmp \
    && mv /tmp/linux-amd64/helm /usr/local/bin \
    && curl -Lo ./kind https://github.com/kubernetes-sigs/kind/releases/download/v$KIND_VERSION/kind-$(uname)-amd64 \
    && chmod +x ./kind \
    && mv ./kind /usr/local/bin \
    && rm -rf /tmp/* 

ADD docker-entrypoint.sh /usr/local/bin

ENTRYPOINT docker-entrypoint.sh
