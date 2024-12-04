#!/bin/bash -

print() {
  echo "[$(date)][main.sh] $@"
}

run() {
  echo "[$(date)][main.sh] $@"
  "$@"
}

run ls -la && echo ok
