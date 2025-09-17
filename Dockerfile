FROM golang:1.25-alpine AS go

FROM klakegg/hugo:0.111.3-alpine
COPY --from=go /usr/local/go/ /usr/local/go/

RUN apk update && apk upgrade && \
    apk add --no-cache git

ENV PATH="/usr/local/go/bin:$PATH"
