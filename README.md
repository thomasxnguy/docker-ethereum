# Ethereum Docker

Provide a docker-compose allowing to quickly run a private Ethereum network as well as a monitoring dashboard for quick development.

I used the official golang implementation [Geth](https://hub.docker.com/r/ethereum/client-go/) as a base image for the node.

Genesis file has been generated using puppeth with POA(Proof of Authority) consensus engine.

# Getting started

### Prerequisites

- Docker and Docker Compose installed

#### To start

To run the Ethereum network, run the following:

```
$ docker-compose -f docker-compose.yml up -d
```

This will create a private Ethereum network composed of 2 nodes.

#### Get Enode Id
```
$ docker logs geth_node1 2>&1 | grep "enode:"
$ docker logs geth_node2 2>&1 | grep "enode:"
```

Each node won't be persisting data on disk. If you need to, uncomment the section in the docker-compose.yml


## Monitoring

[WIP]
