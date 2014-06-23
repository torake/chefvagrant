#!/bin/bash

useradd -G wheel -d /home/vagrant vagrant
mkdir /home/vagrant/.ssh/
wget --no-check-certificate -O /home/vagrant/.ssh/authorized_keys https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
chown -R vagrant:wheel /home/vagrant/.ssh

sed -i /packer.localhost/d /root/.ssh/authorized_keys2

sed -i '/NOPASSWD/s/# %wheel/%wheel/' /etc/sudoers
sed -i '/Defaults.*requiretty/d' /etc/sudoers

exit 0
