#!/bin/bash -

echo hello from provisioner

apt-get update -y
apt-get install -y bpfcc-tools libbpfcc libbpfcc-dev linux-headers-$(uname -r)
