#!/bin/bash

letsencrypt certonly --webroot -w /var/www/letsencrypt -d "$CN" --agree-tos --email "$EMAIL" --non-interactive --text

cp /etc/letsencrypt/live/"$CN"/cert1.pem /var/certs/"$CN"-cert1.pem
cp /etc/letsencrypt/live/"$CN"/chain1.pem /var/certs/"$CN"-chain1.pem
cp /etc/letsencrypt/live/"$CN"/fullchain1.pem /var/certs/"$CN"-fullchain1.pem
cp /etc/letsencrypt/live/"$CN"/privkey1.pem /var/certs/"$CN"-privkey1.pem

