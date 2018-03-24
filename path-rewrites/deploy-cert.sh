#!/bin/bash

cert_path='/etc/letsencrypt/live/your.domain.name'

sudo cp $cert_path/fullchain.pem /etc/nginx/
sudo cp $cert_path/privkey.pem /etc/nginx/
sudo chmod 600 /etc/nginx/privkey.pem
