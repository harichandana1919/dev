#!/bin/bash -xe

sudo apt-get update -y

# To use this repository, first add the key to your system
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Then add a Jenkins apt repository entry:
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null


# Update your local package index, then finally install Jenkins:
sudo apt-get update -y
sudo apt-get install -y fontconfig openjdk-17-jre
sudo apt-get install -y jenkins


# start & enable jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins


# check version
java --version
jenkins --version
