#!/bin/bash
# Script for NetworkLoss Chaos Monkey

# Drops 7% of packets, with 25% correlation with previous packet loss
# 7% is high, but it isn't high enough that TCP will fail entirely

# bumped up to 17% for more packet loss
sudo -i tc qdisc add dev eth0 root netem loss 17% 25%
