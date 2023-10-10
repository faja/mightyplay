#!/bin/bash -

echo hello from provisioner

apt-get update -y

# BCC | ch02
apt-get install -y bpfcc-tools libbpfcc libbpfcc-dev linux-headers-$(uname -r)

# bpftool | ch03
apt-get install -y bpftool

# make and clang | ch03
apt-get install -y make clang
