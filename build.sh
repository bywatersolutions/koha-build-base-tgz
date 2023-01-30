#!/bin/bash

apt-get update
pbuilder create --distribution buster --mirror http://debian.csail.mit.edu/debian/
pbuilder execute --save-after-exec /pbuilder.sh --basetgz /var/cache/pbuilder/base.tgz
cp /var/cache/pbuilder/base.tgz /output/.
