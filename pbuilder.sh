#!/bin/bash
export VERSION=22.11
echo "deb http://debian.koha-community.org/koha $VERSION main buster" > /etc/apt/sources.list.d/koha.list
apt update
apt install -y wget gnupg
wget -O- http://debian.koha-community.org/koha/gpg.asc | apt-key add -
apt update
apt install -y koha-perldeps
apt install -y libio-stringy-perl
