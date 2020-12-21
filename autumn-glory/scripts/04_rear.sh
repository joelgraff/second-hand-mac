#!/bin/bash

if [[ ! -d "/opt/secondhand-mac/rear/" ]]; then
    cd /opt/secondhand-mac/rear
    sudo -A git pull

else

    sudo -A mkdir -p /opt/secondhand-mac/rear

    #clone rear and install dependencies
    sudo git clone https://github.com/rear/rear /opt/secondhand-mac/rear
fi

sudo apt install -y extlinux

#copy config files over
sudo cp ../etc/rear/local.conf /opt/secondhand-mac/rear/etc/rear/local.conf
sudo cp ../usr/share/rear/conf/* /opt/secondhand-mac/rear/usr/share/rear/conf
sudo cp ../usr/share/rear/lib/* /opt/secondhand-mac/rear/usr/share/rear/lib
sudo cp ../usr/share/rear/check/default/* /opt/secondhand-mac/rear/usr/share/rear/check/default