#!/bin/bash

k3d cluster create --port 8082:30080@agent:0 -p 8081:80@loadbalancer --agents 2

kubectl create namespace flux-system

kubectl -n flux-system create secret generic sops-age \
  --from-file=sops.age=./key.txt

flux check --pre

flux bootstrap github \
    --owner=sokkanen \
    --repository=kube-cluster-dwk \
    --personal \
    --private=false