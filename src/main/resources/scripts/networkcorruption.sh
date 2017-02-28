#!/bin/bash
# Script for NetworkCorruption Chaos Monkey

# Corrupts 25% of packets
sudo -i tc qdisc add dev eth0 root netem corrupt 25%
