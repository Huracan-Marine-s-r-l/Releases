#!/bin/bash

# need or for actual hardware and debug
( ip addr show eth0 || ip addr show enp1s0f0 ) | grep 'inet ' | awk '{print $2}' | cut -d/ -f1 > /dev/stdout
# hardware          || debug