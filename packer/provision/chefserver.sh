#!/bin/bash

KS_URL=$(sed 's/.* ks=\([^ ]*\) .*/\1/' /root/ks_cmdline.txt)

KS_BASE=${KS_URL%/*}

rpm -Uvh $KS_BASE/chef-server-11.1.1-1.el5.x86_64.rpm


