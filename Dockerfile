FROM alpine:3.7

ENV HOST HOSTNAME

RUN apk -U upgrade \
    && apk add -U --no-cache openssl util-linux strongswan bash \
    && rm -rf /var/cache/apk/* \
    && rm -f /etc/ipsec.secrets

ADD ./etc/* /etc/
COPY generate-mobileconfig /usr/local/bin
COPY start-vpn /usr/local/bin

EXPOSE 500/udp 4500/udp
CMD ["start-vpn"]
