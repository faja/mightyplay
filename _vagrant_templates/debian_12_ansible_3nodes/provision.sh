#!/bin/bash -

echo hello from provisioner

apt-get -y update

echo 192.168.59.100 node10.local node10 >> /etc/hosts
echo 192.168.59.101 node11.local node11 >> /etc/hosts
echo 192.168.59.102 node12.local node12 >> /etc/hosts
