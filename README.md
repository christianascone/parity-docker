# parity-docker

## Requirements
- [Docker](https://www.docker.com/get-docker)

## Getting started

In order to run a docker container with parity installed, start building the image
```bash
docker build . -t parity/ubuntu
```

A docker image, using ubuntu:16.04 as base, will be built.

Then run a container with
```bash
docker run -ti parity/ubuntu
```

### Parity run

With the docker's interactive bash, you can easily run parity.
In order to run it with default configuration (syncing with official public Ethereum network) run
```bash
parity
```

In case you want to deploy a private development chain, run
```bash
parity --chain dev
```

## References
- https://wiki.parity.io
- https://wiki.parity.io/Chain-specification

## License
This project is licensed under the [MIT license](LICENSE).