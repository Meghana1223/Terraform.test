#!/bin/bash

sudo yum update -y 
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1> Welcome to webpage </h1>" > /var/www/http/index.html
# <h1> Welcome </h1> content is storeing in the index.html file
