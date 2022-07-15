#!/bin/bash

flux check --pre

flux bootstrap github \
    --owner=sokkanen \
    --repository=kube-cluster-dwk \
    --personal \
    --private=false

kubectl -n flux-system create secret generic sops-age \
  --from-file=age.agekey=key.txt