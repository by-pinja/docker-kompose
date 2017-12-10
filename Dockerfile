FROM alpine:3.7

RUN apk add --no-cache curl
RUN curl -L https://github.com/kubernetes/kompose/releases/download/v1.4.0/kompose-linux-amd64 -o kompose
RUN chmod +x kompose
RUN mv ./kompose /usr/local/bin/kompose

ENTRYPOINT ["kompose"]