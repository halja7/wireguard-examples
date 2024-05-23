# CERTS FOR TLS

###### CA ########
openssl genpkey -algorithm RSA -out ca.key -pkeyopt rsa_keygen_bits:2048

openssl req -x509 -new -key ca.key -out ca.crt -days 365


###### SERVER ######
openssl genpkey -algorithm RSA -out server.key -pkeyopt rsa_keygen_bits:2048

openssl req -new -key server.key -out server.csr


openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 365

###### CLIENT ######

openssl genpkey -algorithm RSA -out client.key -pkeyopt rsa_keygen_bits:2048

openssl req -new -key client.key -out client.csr

openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out client.crt -days 365
