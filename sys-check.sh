#!/bin/bash

#This a script to check system resources

echo "Memory:"
/usr/bin/free -h
echo "Disk Usage:"
/bin/df -h
echo "Uptime:"
uptime

exit
