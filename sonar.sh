#!/bin/bash

#automatic installation of Sonarqube
#Author: Pie
#Date:02/23/2022

echo "Installation of Sonarqube in progress..."
echo
sleep 1
sudo yum update -y
echo
sleep 2
sudo yum install java-11-openjdk-devel -y
echo
sleep 1
sudo yum install java-11-openjdk -y
echo
sleep 3
cd /opt 
echo
sleep 1
sudo yum install wget -y
echo
sleep 1
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo
sleep 2
sudo yum install unzip -yum
echo
sleep 1
sudo unzip /opt/sonarqube-9.3.0.51899.zip
echo
sleep 2
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
echo
sleep 3
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
echo
sleep 1
./sonar.sh start
echo "Installation was complete"