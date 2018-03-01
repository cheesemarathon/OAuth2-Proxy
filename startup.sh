#!/bin/bash

wget https://raw.githubusercontent.com/cheesemarathon/oAuth2-Proxy-Docker-Container/master/oauth2_proxy.cfg -P /etc/oauth2/
wget https://raw.githubusercontent.com/cheesemarathon/oAuth2-Proxy-Docker-Container/master/emails.cfg -P /etc/oauth2/

./bin/oauth2_proxy --upstream=http://0.0.0.0:8080/ --http-address=0.0.0.0:4180
