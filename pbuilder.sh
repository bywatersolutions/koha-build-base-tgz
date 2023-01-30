#!/bin/bash
export VERSION=22.11
echo "deb http://debian.koha-community.org/koha $VERSION main stretch" > /etc/apt/sources.list.d/koha.list
apt install -y wget gnupg
wget -O- http://debian.koha-community.org/koha/gpg.asc | apt-key add -
apt update
apt install -y koha-perldeps
apt install -y libio-stringy-perl
