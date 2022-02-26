#!/bin/bash
kubectl apply -f ./web-k8s.yml
kubectl autoscale deployment goatchella --cpu-percent=50 --min=3 --max=20