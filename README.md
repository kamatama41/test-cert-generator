# test-cert-generator

Docker image to generate self-signed client/server certs. The certs are intended to be used for tests, so you should not apply them to actual applications.

## Usage

Just run the container, so that 7 files will be generated on `/root/work` on the container.
Each password for P12 files is `p@ssw0rd`.

```sh
$ docker run --rm -v $(pwd)/work:/root/work kamatama41/test-cert-generator
$ ls work
ca-chain.cert.pem  client.cert.pem  client.key.pem  client.p12  example.com.cert.pem  example.com.key.pem  example.com.p12
```

You can configure some parameters by following environment variables:
- `PRIVATE_KEY_PASSWORD`: Master password for all private keys (default: `p@ssw0rd`)
- `SERVER_COMMON_NAME`: Common name for the server cert (default: `example.com`)
- `SERVER_P12_PASSWORD`: Password for P12 file of the server key pair (default: `p@ssw0rd`)
- `CLIENT_COMMON_NAME`: Common name for the client cert (default: `client`)
- `CLIENT_P12_PASSWORD`: Password for P12 file of the client key pair (default: `p@ssw0rd`)
