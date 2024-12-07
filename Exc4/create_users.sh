#!/bin/bash
set -e

mkdir -p certs

openssl genrsa -out certs/user1.key 2048
openssl req -new -key certs/user1.key -out certs/user1.csr -subj "/CN=user1/O=cluster-secret"
openssl x509 -req -in certs/user1.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out certs/user1.crt -days 365

openssl genrsa -out certs/user2.key 2048
openssl req -new -key certs/user2.key -out certs/user2.csr -subj "/CN=user2/O=cluster-pod-reader"
openssl x509 -req -in certs/user2.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out certs/user2.crt -days 365

openssl genrsa -out certs/user3.key 2048
openssl req -new -key certs/user3.key -out certs/user3.csr -subj "/CN=user3/O=cluster-pod-writer"
openssl x509 -req -in certs/user3.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out certs/user3.crt -days 365

echo "Пользователи созданы"
