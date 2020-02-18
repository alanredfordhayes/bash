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
    INTERFACES_ARRAY=$("${NETWORK_INTERFACES_ARRAY[@]/$INTERFACE}")
    echo "Loopback deleted from array"
    fi

done

echo ${#INTERFACES_ARRAY[@]}
echo ${#NETWORK_INTERFACES_ARRAY[@]}
if [ "${#INTERFACES_ARRAY[@]}" -lt "${#NETWORK_INTERFACES_ARRAY[@]}" ]
then
    for IFACE in "${INTERFACES_ARRAY[@]}"
    do
        echo $IFACE
    done
fi