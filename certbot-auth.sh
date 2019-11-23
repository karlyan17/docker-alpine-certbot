#!/bin/ash
mkdir -p /srv/.well-known/acme-challenge/
echo $CERTBOT_VALIDATION > /srv/.well-known/acme-challenge/$CERTBOT_TOKEN
