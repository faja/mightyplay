#!/bin/bash -

echo provisioner start

# docker
cp /src/provision/docker.asc /etc/apt/keyrings/docker.asc
cp /src/provision/docker.list /etc/apt/sources.list.d/docker.list
apt-get -y update
apt-get -y install docker-ce

# kind
VERSION=0.23.0
curl -L -o /usr/bin/kind https://github.com/kubernetes-sigs/kind/releases/download/v${VERSION}/kind-linux-amd64
chmod a+x /usr/bin/kind
kind create cluster

# kubectl
apt-get -y install kubernetes-client

# helm
VERSION=1.23.0
curl -L -o /tmp/helm.tar.gz https://get.helm.sh/helm-v${VERSION}-linux-amd64.tar.gz
tar -C /tmp -xvf /tmp/helm.tar.gz
mv /tmp/linux-amd64/helm /usr/bin/helm

echo provisioner end
