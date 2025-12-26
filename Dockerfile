FROM golang:1.25-alpine AS go

FROM ghcr.io/gohugoio/hugo:v0.153.3

USER root
COPY --from=go /usr/local/go/ /usr/local/go/

RUN apk update && apk upgrade && \
    apk add --no-cache git

USER hugo

ENV PATH="/usr/local/go/bin:$PATH"
