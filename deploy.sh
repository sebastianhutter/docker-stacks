#!/bin/bash

# setup docker tls connection
export DOCKER_CERT_PATH=~/.docker/home/ 
export DOCKER_HOST=tcp://swarm-master.hutter.cloud:2376 
export DOCKER_TLS_VERIFY=1

# check if a paramter is given
stack=$1
[ -z "${stack}" ] && echo "please specify the stack to deploy" && exit 1

# deploy stack
pushd ${stack}
docker stack deploy --compose-file docker-compose.yml ${stack}
popd