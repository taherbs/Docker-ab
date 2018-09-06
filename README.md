## ApacheBench - Docker

Docker container for ApacheBench (ab).

### Prerequisites:
* [Docker](https://docs.docker.com/install/)

### Usage:

* Build the container
```bash
docker build -t taherbs/ab:latest .
```

* Ab help
```bash
docker run --rm --tty taherbs/ab --help
```

* Run ab on public website
```bash
# docker run --rm --tty CONTAINER_NAME -n NUMBER_OF_REQUESTS -c NUMBER_OF_CONCURRENCY WEB_SERVER_URL
docker run --rm --tty taherbs/ab -n 10 -c 10 http://www.yahoo.com/
```

* Run on a working local docker web container
```bash
# docker run --network WEB_CONTAINER_DOCKER_NETWORK_NAME --rm --tty CONTAINER_NAME -n NUMBER_OF_REQUESTS -c NUMBER_OF_CONCURRENCY http://CONTAINER_NAME/
docker inspect CONTAINER_NAME -f "{{json .NetworkSettings.Networks }}" # Get the network interface name
docker run --network=WEB_CONTAINER_DOCKER_NETWORK_NAME --rm --tty taherbs/ab -n 10 -c 10 http://CONTAINER_NAME/
```