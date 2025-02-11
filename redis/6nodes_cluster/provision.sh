#!/bin/bash -

echo hello from provisioner

apt-get -y update

echo 192.168.59.100 node20.local node20 >> /etc/hosts
echo 192.168.59.101 node21.local node21 >> /etc/hosts
echo 192.168.59.102 node22.local node22 >> /etc/hosts
echo 192.168.59.103 node23.local node23 >> /etc/hosts
echo 192.168.59.104 node24.local node24 >> /etc/hosts
echo 192.168.59.105 node25.local node25 >> /etc/hosts
echo 192.168.59.106 node26.local node26 >> /etc/hosts
