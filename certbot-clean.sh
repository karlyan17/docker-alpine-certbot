#!/bin/ash
rm /srv/.well-known/acme-challenge/$CERTBOT_TOKEN
cat /etc/letsencrypt/live/$CERTBOT_DOMAIN/fullchain.pem /etc/letsencrypt/live/$CERTBOT_DOMAIN/privkey.pem /haproxy-crt/cert.pem
