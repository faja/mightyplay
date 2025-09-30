#!/bin/bash -

set -e

jsonnet -J vendor -o dashboard.json dashboard.jsonnet
terraform apply -auto-approve
