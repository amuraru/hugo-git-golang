FROM golang:1.20-alpine AS go

FROM klakegg/hugo:0.107.0-alpine
COPY --from=go /usr/local/go/ /usr/local/go/

RUN apk update && apk upgrade && \
    apk add --no-cache git

ENV PATH="/usr/local/go/bin:$PATH"
