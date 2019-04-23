# test-cert-generator

Docker image to generate client/server certs. The certs are intended to be used for tests, so you should not apply them to actual applications.

## Usage

Just run the container, so that the 3 files (`ca-chain.p12`, `client.p12` and `example.com.p12`) will be generated on `/root/work` on the container.
Each password for P12 files is `p@ssw0rd`.

```sh
$ docker run --rm -v $(pwd)/work:/root/work kamatama41/test-cert-generator
$ ls work
ca-chain.p12    client.p12      example.com.p12
```

You can configure some parameters by following environment variables:
- `PRIVATE_KEY_PASSWORD`: Master password for all private keys (default: `p@ssw0rd`)
- `SERVER_COMMON_NAME`: Common name for the server cert (default: `example.com`)
- `SERVER_P12_PASSWORD`: Password for P12 file of the server cert (default: `p@ssw0rd`)
- `CLIENT_COMMON_NAME`: Common name for the client cert (default: `client`)
- `CLIENT_P12_PASSWORD`: Password for P12 file of the client cert (default: `p@ssw0rd`)
- `CERT_P12_PASSWORD`: Password for P12 file of the private CA cert (default: `p@ssw0rd`)
