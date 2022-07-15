#!/bin/bash

flux check --pre

flux bootstrap github \
    --owner=sokkanen \
    --repository=kube-cluster-dwk \
    --personal \
    --private=false