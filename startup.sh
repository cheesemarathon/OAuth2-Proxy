#!/bin/bash

wget https://raw.githubusercontent.com/cheesemarathon/oAuth2-Proxy-Docker-Container/master/oauth2_proxy.cfg -P /etc/oauth2/
wget https://raw.githubusercontent.com/cheesemarathon/oAuth2-Proxy-Docker-Container/master/emails.cfg -P /etc/oauth2/

./bin/oauth2_proxy -config=/etc/oauth2/oauth2_proxy.cfg
