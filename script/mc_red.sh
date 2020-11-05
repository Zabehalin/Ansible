#!/bin/bash

### update on upgrade aws_linux
sudo yum -y update
sudo yum -y upgrade 

### install docker on aws_linux
sudo yum -y install docker

### start docker on aws_linux
sudo service docker start


### install jenkins

sudo yum install -y git  java-1.8.0-openjdk-devel aws-cli
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
sudo service jenkins start
sudo chkconfig --add jenkins


### Add User Group on aws_linux
#sudo usermod -a -G docker ec2-user
	
