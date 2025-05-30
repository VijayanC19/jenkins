#!/bin/bash

sudo apt update

sudo apt install fontconfig -y openjdk-17-jre

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install  -y jenkins

sudo systemctl restart jenkins 

sudo apt install docker.io

sudo chmod 777 /var/run/docker.sock

sudo apt install maven


sudo cat /var/lib/jenkins/secrets/initialAdminPassword
password will come....
