#!/bin/bash

kubectl create clusterrole cluster-secret --verb=get,list,watch,create,update,patch,delete --resource=secrets

kubectl create clusterrole cluster-pod-reader --verb=get,list,watch --resource=pods,services,deployments,configmaps

kubectl create clusterrole cluster-pod-writer --verb=get,list,watch,create,update,patch,delete --resource=pods,services,deployments,configmaps

echo "Роли созданы"
