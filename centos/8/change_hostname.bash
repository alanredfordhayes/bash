#/bin/bash


CURRENT_HOSTNAME=$(hostname)
echo "Current hostname: $CURRENT_HOSTNAME"


if [ -z "$1" ]
then
INPUT1="test-server-01"
echo "No input detected at commandline." 
else
echo "Input detected at commandline"
INPUT1=$1
fi


if [ "$CURRENT_HOSTNAME" == "$INPUT1" ]
then
echo "Current hostname matches the input value."
echo "Current hostname: $CURRENT_HOSTNAME"
else
echo "Current hostname does not match the input value."
echo "Current hostname: $CURRENT_HOSTNAME"
echo "New hostname: $INPUT1"
fi