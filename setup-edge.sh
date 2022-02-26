#!/bin/bash -x

helm repo add cribl https://criblio.github.io/helm-charts/

FOO=$(kubectl get namespace cribl)
if [ $? -ne 0 ]; then
    echo "creating namespace!"
    kubectl create namespace cribl
fi

helm install edge-wg ../helm-charts/helm-chart-sources/logstream-workergroup -f./edge-values-instrumented.yml -n cribl
