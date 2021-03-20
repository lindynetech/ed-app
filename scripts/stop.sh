#!/bin/sh
    
[[ -e /etc/systemd/system/helloworld.service ]] \
  && systemctl status helloworld \
  && [[ $? -eq 0 ]] \
  && systemctl stop helloworld || echo "Application not started"  
