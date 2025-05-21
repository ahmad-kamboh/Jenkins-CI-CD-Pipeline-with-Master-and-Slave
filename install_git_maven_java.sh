#!/bin/bash

sudo yum update -y
sudo yum install git -y
sudo amazon-linux-extras enable java-openjdk11
sudo yum install java-11-openjdk -y
sudo yum install maven -y

echo "Java, Maven, and Git installed successfully"
