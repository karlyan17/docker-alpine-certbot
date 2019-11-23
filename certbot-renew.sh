#!/bin/ash
cat $RENEWED_LINEAGE/fullchain.pem $RENEWED_LINEAGE/privkey.pem  > /haproxy-crt/cert.pem
