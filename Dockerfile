FROM alpine:3

ARG FLY_VERSION
ENV FLY_VERSION=${FLY_VERSION:-7.5.0}

RUN apk add --no-cache ca-certificates curl

RUN curl -L https://github.com/concourse/concourse/releases/download/v${FLY_VERSION}/fly-${FLY_VERSION}-linux-amd64.tgz | tar xfz - -C /usr/local/bin && \
    chmod 755 /usr/local/bin/fly

ENTRYPOINT ["fly"]
