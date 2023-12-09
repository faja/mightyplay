#!/bin/bash -

apt-get update -y
apt-get install -y linux-headers-$(uname -r) python3-bpfcc
