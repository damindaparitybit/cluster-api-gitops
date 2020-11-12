#!/usr/bin/env sh
set -eux

helm repo add jetstack https://charts.jetstack.io
helm repo update

helm template cert-manager jetstack/cert-manager --version v0.16.1 -f cert-manager/helm/cert-manager-values.yaml --namespace cert-manager --include-crds > cert-manager/manifests/cert-manager.yaml