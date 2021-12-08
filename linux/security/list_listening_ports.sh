#!/bin/bash

# install the 'net-tools' package so we can use 'netstat'
apt install net-tools -y;

# list all open ports
# l - only display listening sockets
# n - don't resolve names
# p - display pid or name for sockets
# t - show tcp connections
# u - show udp connections
netstat -lnptu;