#!/bin/bash


IPADDR=$(ip address | grep "^[0-9]:" | cut -d " " -f 2)
NETWORK_INTERFACES=$(echo $IPADDR | sed "s/ /,/g")
echo $NETWORK_INTERFACES