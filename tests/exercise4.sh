#!/bin/bash
set -eux

kubectl get deployments
kubectl describe deployments mydreams
kubectl get pods
kubectl get services
kubectl describe services mydreams
