#!/bin/bash
set -eux

minikube start

eval $(minikube docker-env)
docker build -t mydreams mydreams
kubectl run mydreams --image=mydreams --port=3000 --image-pull-policy=Never
kubectl get deployments
kubectl expose deployment mydreams --type=NodePort
open $(minikube service mydreams --url)
