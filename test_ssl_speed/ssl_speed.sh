#!/usr/bin/bash

# test ssl data size 
for host in google.com bing.com cloudflare.com patriots.com; do echo -en "$host\t" && openssl s_client -connect www.$host:443 -servername www.$host 2>/dev/null </dev/null | grep "has read"; done

# test custom domain ssl data size
echo "which ip or domain do you want to check ssl data size"
read -r DOMAIN

openssl s_client -connect "$DOMAIN":443 -servername "$DOMAIN" 2>/dev/null </dev/null | grep "has read"