#!/bin/bash


mkdir cssie7
wget https://github.com/klakpin/RPO_ie7/raw/master/cssie7.tar.gz -P cssie7/
tar -xvf cssie7/cssie7.tar.gz -C cssie7/
rm -f cssie7/cssie7.tar.gz

mkdir hacker
wget https://github.com/klakpin/RPO_ie7/raw/master/hacker.tar.gz -P hacker/
tar -xvf hacker/hacker.tar.gz -C hacker/
rm -f hacker/hacker.tar.gz

sudo docker build -t cssie7 cssie7/
sudo docker build -t hacker hacker/

sudo docker run -itd -p 8080:80 cssie7
sudo docker run -itd -p 8081:80 hacker
