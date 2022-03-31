#!/bin/bash

apt-get update
apt-get install -y devscripts pbuilder dh-make fakeroot debian-archive-keyring
pbuilder create --distribution stretch --mirror http://debian.csail.mit.edu/debian/
pbuilder execute --save-after-exec /pbuilder.sh --basetgz /var/cache/pbuilder/base.tgz
cp /var/cache/pbuilder/base.tgz /output/.
