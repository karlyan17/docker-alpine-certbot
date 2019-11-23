#!/bin/ash
while:
do
    certbot certonly --config /etc/letsencrypt/cli.ini
    sleep 1d
done
