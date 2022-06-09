#!/bin/bash

# Lab 2 - cleaning up the sysinfo.sh

# This is a script with various commands to display the system information of my virtual machine and making it easier to read 

# Title

echo -n " This is a report for myvm: "

# Display Full Qualified Domain name
echo -n " my FQDN is: "
hostname --fqdn

# Operating system
echo -n " Operating System name and version: "
egrep '^(VERSION)=' /etc/os-release

# Display IP addresses
echo -n " My IP address is: "
ip a s ens33 | awk '/inet /{print $2}'

# Show space on disk
echo -n " Root File System Freespace: "
df -T -h /dev/sda1 
