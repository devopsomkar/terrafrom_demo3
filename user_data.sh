#!/bin/bash

cd /tmp && \ 
curl -L -H "Authorization: Api-Token " \
"https://azs89024.live.dynatrace.com/api/v1/deployment/installer/agent/unix/default/latest?arch=x86" \
-o Dynatrace-OneAgent-Linux.sh


ls -l /tmp/Dynatrace-OneAgent-Linux.sh
head -5 /tmp/Dynatrace-OneAgent-Linux.sh
file /tmp/Dynatrace-OneAgent-Linux.sh

/bin/sh /tmp/Dynatrace-OneAgent-Linux.sh \
--set-monitoring-mode=fullstack \
--set-app-log-content-access=true
