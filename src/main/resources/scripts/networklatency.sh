#!/bin/bash
# Script for NetworkLatency Chaos Monkey

# Adds 1000ms +- 500ms of latency to each packet
# sudo tc qdisc add dev eth0 root latency delay 1000ms 500ms

# Adds 1000ms latency
sudo -i tc qdisc add dev eth0 root netem delay 1000ms
