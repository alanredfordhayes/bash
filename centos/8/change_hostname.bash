#/bin/bash


if [ -z "$1" ]
then
echo "No input at commandline."
INPUT="test-server-01"
else
INPUT=$1
fi


echo $INPUT