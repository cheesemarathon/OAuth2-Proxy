#!/bin/bash

if [ -e /etc/oauth2/oauth2_proxy.cfg ]
then
    wget https://raw.githubusercontent.com/cheesemarathon/oAuth2-Proxy-Docker-Container/master/oauth2_proxy.cfg -P /etc/oauth2/
    chmod 664 /etc/oauth2/oauth2_proxy.cfg
fi

if [ -e /etc/oauth2/emails.cfg ]
then
    wget https://raw.githubusercontent.com/cheesemarathon/oAuth2-Proxy-Docker-Container/master/emails.cfg -P /etc/oauth2/
    chmod 664 /etc/oauth2/emails.cfg
fi

./bin/oauth2_proxy -config=/etc/oauth2/oauth2_proxy.cfg
