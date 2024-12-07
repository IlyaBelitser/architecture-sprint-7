#!/bin/bash

kubectl create clusterrolebinding user1-cluster-secret-binding --clusterrole=cluster-secret --user=user1
  
kubectl create clusterrolebinding user1-cluster-pod-reader-binding --clusterrole=cluster-pod-reader --user=user2

kubectl create clusterrolebinding user3-cluster-pod-writer-binding --clusterrole=cluster-pod-writer --user=user3


echo "Пользователи связаны с ролями"
