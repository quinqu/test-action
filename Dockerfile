# syntax = docker/dockerfile:1.1-experimental
FROM alpine

# 
COPY --from=golang:1.13-alpine /usr/local/go/ /usr/local/go/
 
ENV PATH="/usr/local/go/bin:${PATH}"

RUN apk --update --no-cache add git bash 

# Copy over main.go
COPY main.go /main.go

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /main.go
RUN chmod +x /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]