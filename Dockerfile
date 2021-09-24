FROM golang:1.16-alpine AS go

FROM klakegg/hugo:0.88.0-alpine
COPY --from=go /usr/local/go/ /usr/local/go/

RUN apk update && apk upgrade && \
    apk add --no-cache git

ENV PATH="/usr/local/go/bin:$PATH"
