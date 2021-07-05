ARG ALPINE_VERSION=3.12
FROM alpine:${ALPINE_VERSION}

RUN apk add --no-cache socat=~1.7 

ENV IN="172.18.0.1:9323" \
    OUT="9323"

COPY rootfs /

CMD ["dockerd-exporter.sh"]