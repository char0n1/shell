#!/bin/bash

for port in {1..65535}
	do for ip in {0..255}
		do (echo > /dev/tcp/172.16.0.$ip/$port) >/dev/null 2>&1 && echo "port $port is open"
	done
done
