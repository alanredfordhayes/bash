#/bin/bash


$CURRENT_HOSTNAME=$(hostname)
echo $CURRENT_HOSTNAME


if [ -z "$1" ]
then
INPUT1="test-server-01"
echo "No input at commandline. Hence, server will be named the following: $INPUT" 
else
INPUT1=$1
fi


if [ "$CURRENT_HOSTNAME" -eq "$INPUT1" ]
then
echo "Current hostname matches the input value."
else
echo "Current hostname does not match the input value."
echo "Current hostname: $CURRENT_HOSTNAME"
echo "New hostname: $INPUT1"
fi