#!/bin/bash

# get letsencrypt:
# * https://github.com/letsencrypt/letsencrypt.git
# * https://github.com/certbot/certbot.git

sudo systemctl stop nginx
./letsencrypt-auto --standalone \
                   --email your.email@address.com \
                   -d your.domain.name \
                   -d www.your.domain.name \
                   -d fake-backend-1.your.domain.name \
                   -d fake-backend-2.your.domain.name \
                   -d fake-backend-3.your.domain.name \
                   -d connector-service-1.your.domain.name \
                   -d connector-service-2.your.domain.name \
                   -d connector-service-3.your.domain.name \
                   certonly
sudo systemctl start nginx
