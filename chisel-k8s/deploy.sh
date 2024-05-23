

# certificates
kubectl create secret tls chisel-tls-secret --cert=certs/server.crt --key=certs/server.key

kubectl create secret generic chisel-client-cert-secret --from-file=certs/client.crt
