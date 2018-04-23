#!/bin/bash
set -eux

kubectl apply -f mydreams/deployment.yaml 
kubectl get deployments
kubectl get pods

read -p 'Press <ENTER> to continue:' dummy
kubectl delete deployments mydreams
minikube stop
