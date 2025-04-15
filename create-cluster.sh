#!/bin/sh

echo "\n📦 Initializing Kubernetes cluster...\n"

minikube start --cpus 8 --memory 6g --driver docker --profile polar

echo "\n🔌 Enabling NGINX Ingress Controller...\n"

minikube addons enable ingress --profile polar

echo "\n⛵ Happy Sailing!\n"
