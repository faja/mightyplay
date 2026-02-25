#!/bin/bash -

reflex -r '.' -- sh -c 'echo {} && echo && helm template XXX . > /tmp/m.yaml'
# feel free to:
#   tail -f /tmp/m.yaml
# or even something like:
#   cd /tmp && reflex -g m.yaml -- k8s_get_resource_from_manifest.sh ${KIND} ${NAME} {}
