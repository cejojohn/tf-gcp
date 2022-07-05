#!/bin/bash
sudo yum install httpd -y
sudo systemctl  start  httpd
sudo sh -c "echo 'this is new webserver ' >  /var/www/html/index.html"
sudo sh -c "echo ${HOSTNAME} >> /var/www/html/index.html"
