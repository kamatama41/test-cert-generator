FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    openssl \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /root
COPY generate_certs /usr/local/bin/
COPY openssl_ca.cnf openssl_intermediate.cnf ./

CMD generate_certs
