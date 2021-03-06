# Smallest base image
FROM alpine:3.13

COPY VERSION .

# Install needed packages
RUN apk add --no-cache openssl=1.1.1k-r0 easy-rsa=3.0.8-r0 openvpn=2.5.0-r1 iptables=1.8.6-r0 bash=5.1.0-r0 && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

# Configure tun
RUN mkdir -p /dev/net && \
     mknod /dev/net/tun c 10 200 

