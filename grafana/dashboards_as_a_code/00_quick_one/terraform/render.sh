#!/bin/bash -

jsonnet -J vendor -o dashboard.json dashboard.jsonnet
terraform apply -auto-approve
