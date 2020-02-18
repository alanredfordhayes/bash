#!/bin/bash


IPADDR=$(ip address | grep "^[0-9]:" | cut -d " " -f 2)
echo $IPADDR

NETWORK_INTERFACES=$(echo $IPADDR | sed "s/ /,/g")
echo $NETWORK_INTERFACES

IFS=',' read -r -a NETWORK_INTERFACES_ARRAY <<< "$NETWORK_INTERFACES"
for INTERFACE in "${NETWORK_INTERFACES_ARRAY[@]}"
do
    echo "$INTERFACE"

    if [ "$INTERFACE" == "lo:" ]
    then
    echo "Loopback detected"
    else
    IFACE=$(echo $INTERFACE | sed "s//:/g")
    echo $IFACE
    ip address show device $FACE
    fi

done