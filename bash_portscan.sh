#!/bin/bash

for port in {1..65535}; do
  (echo > /dev/tcp/$1/$port) >/dev/null 2>&1 && echo "port $port is open"
done
