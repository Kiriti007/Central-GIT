#!/bin/bash

sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on

sudo mkdir /myapp

sudo cp Dockerfile /myapp/
sudo cp index.html /myapp/

sudo docker build -t myapp /myapp

sudo docker run -d -p 8080:80 myapp
