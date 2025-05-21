#!/bin/bash

# Update and install Java
sudo yum update -y
sudo amazon-linux-extras enable java-openjdk11
sudo yum install java-11-openjdk -y

# Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y

# Start Jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "Jenkins installed. Visit: http://<public-ip>:8080"
