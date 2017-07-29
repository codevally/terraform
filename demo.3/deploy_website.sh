#!/bin/bash
yum install epel-release -y
yum install nginx git -y
cd /usr/share/nginx/html
rm -rf *
git clone https://github.com/BlackrockDigital/startbootstrap-creative.git
mv startbootstrap-creative/* /usr/share/nginx/html
systemctl start nginx
