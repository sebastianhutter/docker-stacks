# docker-stacks

## preparation
the docker swarm manager is using tls for authentication.

- get a certificate (see aws-docker-swarm/create-tls-docker.sh)
- create directory ~/.docker/home 
- please ca.crt, cert.pem and key.pem inside the directory
- chmod 600 ~/.docker/home/*
