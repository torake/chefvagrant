#!/bin/bash

cd httpdir
test -f chef-11.12.8-2.el5.x86_64.rpm || \
wget -q --no-check-certificate https://opscode-omnibus-packages.s3.amazonaws.com/el/5/x86_64/chef-11.12.8-2.el5.x86_64.rpm

test -f chef-server-11.1.1-1.el5.x86_64.rpm || \
wget --no-check-certificate https://opscode-omnibus-packages.s3.amazonaws.com/el/5/x86_64/chef-server-11.1.1-1.el5.x86_64.rpm
