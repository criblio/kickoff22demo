#!/bin/bash
eksctl create cluster -f ./eks.yml
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
