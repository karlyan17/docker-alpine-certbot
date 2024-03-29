FROM alpine/base

RUN apk update \
    && apk upgrade \
    && apk add certbot

RUN mkdir -p /crt /haproxy-crt /etc/letsencrypt/

ADD entrypoint.sh /entrypoint.sh
ADD certbot-clean.sh /certbot-clean.sh
ADD certbot-auth.sh /certbot-auth.sh
ADD certbot-renew.sh /certbot-renew.sh

ENTRYPOINT ["/entrypoint.sh"]
