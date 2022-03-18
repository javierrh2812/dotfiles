#!/bin/bash

printf "\n\n---Installing jenkins!---\n\n"
sudo apt update && sudo apt upgrade &&
sudo apt install openjdk-8-jdk wget gnupg

# buscar jenkins

#service jenkins start
#service jenkins status
#sudo cat /var/lib/jenkins/secrets/initialAdminPassword
