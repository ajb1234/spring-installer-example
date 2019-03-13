#!/bin/bash
# create a spring user
# - make sure the user has a home folder (-m)
# - set the default shell to bash (-s)
# 	this is because sh isn't as easy use as bash
sudo useradd -m -s /bin/bash spring
# install java and git
sudo apt install -y openjdk-8-jre openjdk-8-jdk git
# install maven
sudo apt install -y maven
# install the service script
sudo cp spring.service /etc/systemd/system/spring.service
# reload all of the systemd service scripts
sudo systemctl daemon-reload
