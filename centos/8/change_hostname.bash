#/bin/bash


if [ -z "$1" ]
then
INPUT="test-server-01"
echo "No input at commandline. Hence, server will be named the following: $INPUT" 
else
INPUT=$1
fi


echo $INPUT