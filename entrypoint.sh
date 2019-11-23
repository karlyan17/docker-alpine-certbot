#!/bin/ash

on_sighup_do(){
    certbot certonly --config /etc/letsencrypt/cli.ini
    trap - SIGHUP
}
certbot certonly --config /etc/letsencrypt/cli.ini
trap on_sighup_do SIGHUP
while :
do
    sleep 60
done
