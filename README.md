# parity-docker

[![GitHub license](https://img.shields.io/github/license/christianascone/parity-docker.svg)](https://github.com/christianascone/parity-docker/blob/master/LICENSE)

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
docker run -ti -p 8180:8180 -p 8545:8545 -p 8546:8546 parity/ubuntu
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

## Parity ui

Parity can also expose its ui running it this way:
```bash
parity ui --dapps-interface 0.0.0.0 --ws-interface 0.0.0.0 --ui-interface 0.0.0.0
```
or, for development chain
```bash
parity ui --chain dev --dapps-interface 0.0.0.0 --ws-interface 0.0.0.0 --ui-interface 0.0.0.0
```

## References
- https://wiki.parity.io
- https://wiki.parity.io/Chain-specification

## License
This project is licensed under the [MIT license](LICENSE).