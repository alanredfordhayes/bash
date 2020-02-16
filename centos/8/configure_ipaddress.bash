#!/bin/bash


IPADDR=$(ip address | grep "^[0-9]:" | cut -d " " -f 2)
echo $IPADDR | awk -i "s/ /,/g"