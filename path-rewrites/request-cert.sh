#!/bin/bash

# get letsencrypt:
# * https://github.com/letsencrypt/letsencrypt.git
# * https://github.com/certbot/certbot.git

sudo systemctl stop nginx
./letsencrypt-auto --standalone --email your.email@address.com -d your.domain.name certonly
sudo systemctl start nginx
