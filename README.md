# test-cert-generator

Docker image to generate client/server certs. The certs are intended to be used for tests, so you should not apply them to actual applications.

## Usage

Just run the container, so that the 3 files (`ca-chain.p12`, `client.p12` and `example.com.p12`) will be generated on `/root/work` on the container.
All passwords (P12 files and private keys) is `passw0rd`.

```sh
$ docker run --rm -v $(pwd)/work:/root/work kamatama41/test-cert-generator
$ ls work
ca-chain.p12    client.p12      example.com.p12
```

You can configure some parameters by following environment variables:
- `PASSWORD`: Master password for all private keys and P12 files (default: `passw0rd`)
- `COMMON_NAME_SERVER`: Common name for the server cert (default: `example.com`)
- `COMMON_NAME_CLIENT`: Common name for the client cert (default: `client`)
