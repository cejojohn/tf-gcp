#!/bin/bash
sudo apt-get install apache2 -y
sudo sh -c "echo 'this is new webserver ' >  /var/www/html/index.html"
sudo sh -c "echo ${HOSTNAME} >> /var/www/html/index.html"
