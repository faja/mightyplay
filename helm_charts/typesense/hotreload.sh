#!/bin/bash -

reflex -r '.' -- sh -c 'echo {} && echo && helm template typesense . > /tmp/m.yaml'
# feel free to tail -f /tmp/m.yaml
