#!/bin/bash
apt-get update
apt-get upgrade -y
apt-get install ccze screen unzip -y
apt-get install -y python3-pip
pip3 install --upgrade pip
pip3 install virtualenv

date > /home/ubuntu/beforeinstall.txt

