#!/bin/bash

# Created by: Dominic Quansah
# Date created: 2023-10-30
# Date last modified: 2023-10-31
# Purpose: This script is used to install and configure nginx on an Ubuntu Linux system.
# Project: Jomacs terraform project 

#update system
sudo apt-get update
sudo apt-get upgrade 

#install nginx
sudo apt-get install nginx -y


echo -e '<h1>Congrats! Dominic Quansah. You have installed Nginx!!!</h1>
<h3>You have successfully configured a proxy server as well.</h3>
<h4>Resources provisioned via the use of IaC tool - terraform include a VPC, 3 Subnets, Route Tables, Security Groups, a Target Group, and an EC2 instance.</h4>

<h3>Created by:Dominic Quansah</h3>
<ol>
  <li><a href="https://github.com/SirDominique">Github</a></li>
  <li><a href="https://www.linkedin.com/in/dominic-quansah-psm-i-psm-ii-4a2174101/">LinkedIn</a></li>
</ol>

<h3>Well done!</h3>' > /var/www/html/index.html

#start nginx
sudo systemctl enable nginx
sudo systemctl start nginx

#create proxy server to listen on port 80
sudo tee /etc/nginx/sites-available/practice.conf <<-EOF
server {
  listen 80;

  location / {
    proxy_http_version 1.1;
    proxy_set_header Upgrade \$http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host \$host;
    proxy_cache_bypass http_upgrade;
    ProxyPass http://localhost:80/;
  }
}

ln -s /etc/nginx/sites-available/practice.conf /etc/nginx/sites-enabled/
