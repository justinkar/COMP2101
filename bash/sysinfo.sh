#!/bin/bash

# Lab 1 -  sysinfo.sh

# This is a script with various commands to display the system information of my virtual machine 

# Display hostname
echo -n " my Host name is: "
hostname

# DNS diplay
echo -n " my DNS is: "
hostname -d |

# Operating system
echo -n " Operating System name and version: "
grep "$NAME" /etc/os-release

# Display IP addresses
echo -n " My IP addresses are: "
ip a s ens33 | awk '/inet|inet6 /{print $2}'

# Show space on disk
echo -n " Root File System information: "
df -T -h /dev/sda1 
