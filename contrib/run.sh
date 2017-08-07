#!/usr/bin/env bash

set -e

cp contrib/channels.yaml channels.yaml
cp contrib/gerritbot.conf gerritbot.conf

sed -i -e "
    s|%USER%|$USER|g;
    s|%KEY%|$KEY|g;
    s|%SLACK_URL%|$SLACK_URL|g;
    s|%RTD_URL%|$RTD_URL|g;
    s|%RTD_TOKEN%|$RTD_TOKEN|g;
    " gerritbot.conf

python -m gerritbot.bot gerritbot.conf
