#!/bin/bash


IPADDR=$(ip address | grep "^[0-9]:")
echo ${#IPADDR}