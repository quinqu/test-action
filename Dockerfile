# syntax = docker/dockerfile:1.1-experimental
FROM alpine

COPY --from=golang:1.13-alpine /usr/local/go/ /usr/local/go/
 
ENV PATH="/usr/local/go/bin:${PATH}"

# RUN apk --update --no-cache add git bash py3-pip

# RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing hub

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]