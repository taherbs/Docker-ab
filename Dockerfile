### Dockerfile

FROM alpine:latest
LABEL maintainer=bensalemtaher@gmail.com

RUN apk update && apk upgrade && \
	apk add --update curl apache2-utils && \
	rm -rf /var/cache/apk/*

ENTRYPOINT [ "ab" ]