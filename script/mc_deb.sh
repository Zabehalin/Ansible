#!/bin/bash

### Update repos
apt-get update -y
apt -y upgrade


sudo apt install -y \
       apt-transport-https \
       ca-certificates curl \
       software-properties-common

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

sudp apt-cache policy docker-ce

sudo apt install -y docker-ce

### Install Jenkins

sudo apt install -y openjdk-8-jdk
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins


