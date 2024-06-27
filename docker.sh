#!/bin/bash
#No need to add sudo becase all are excuting with root permisions 

sudo yum update -y 
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user #add the ec2-user into the docker group cmd :- sudo usermod -G docker ec2-user
