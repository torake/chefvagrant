#!/bin/bash

yum -y install kernel-devel-`uname -r`
yum -y install gcc
mount -o loop /root/VBoxGuestAdditions.iso /mnt
cd /mnt
bash VBoxLinuxAdditions.run

exit 0
