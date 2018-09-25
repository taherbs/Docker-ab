## ApacheBench - Docker
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/taherbs/Docker-ap/master/LICENSE)

Docker container for ApacheBench (ab).

### Prerequisites:
* [Docker](https://docs.docker.com/install/)

### Usage:

* Build container
```bash
docker build -t taherbs/ab:latest .
```

* Ab help doc
```bash
docker run --rm --tty taherbs/ab --help
```

* Run ab on a public website
```bash
# docker run --rm --tty CONTAINER_NAME -kl -t TIME_OUT -n NUMBER_OF_REQUESTS -c NUMBER_OF_CONCURRENCY WEB_SERVER_URL
docker run --rm --tty taherbs/ab -kl -t 60 -n 10 -c 10 http://www.yahoo.com/
```

* Run on a working local docker web container
```bash
# docker run --network WEB_CONTAINER_DOCKER_NETWORK_NAME --rm --tty CONTAINER_NAME -kl -t TIME_OUT -n NUMBER_OF_REQUESTS -c NUMBER_OF_CONCURRENCY http://CONTAINER_NAME/
docker inspect CONTAINER_NAME -f "{{json .NetworkSettings.Networks }}" # Get the network interface name
docker run --network=WEB_CONTAINER_DOCKER_NETWORK_NAME --rm --tty taherbs/ab -kl -t 60 -n 10 -c 10 http://CONTAINER_NAME/
```

### Useful Articles
* [Load Testing Apache with AB](https://www.devside.net/wamp-server/load-testing-apache-with-ab-apache-bench)
* [Testing the NGINX Load Balancing Efficiency with ApacheBench](https://jelastic.com/blog/testing-nginx-load-balancing-efficiency-apachebench/)
