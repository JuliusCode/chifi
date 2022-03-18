#!/bin/bash

# chifi installer

# should be dropped with the two soundfiles into /home/pi and then executed

apt-get update

apt-get -y install shairport-sync curl apt-transport-https

curl -sSL https://dtcooper.github.io/raspotify/key.asc | sudo apt-key add -v -
echo 'deb https://dtcooper.github.io/raspotify raspotify main' | sudo tee /etc/apt/sources.list.d/raspotify.list

apt-get update
apt-get -y install raspotify

cat rc.local | sudo tee /etc/rc.local
rm rc.local

reboot