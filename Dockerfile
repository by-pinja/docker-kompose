FROM alpine

ENV KOMPOSE_VERSION=v1.4.0

RUN apk add --no-cache curl
RUN curl -L https://github.com/kubernetes/kompose/releases/download/${KOMPOSE_VERSION}/kompose-linux-amd64 -o /usr/local/bin/kompose
RUN chmod +x /usr/local/bin/kompose

RUN adduser -S kompose
USER kompose

CMD kompose