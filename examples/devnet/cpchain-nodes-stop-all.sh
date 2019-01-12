#!/bin/sh

cpchain=`sed "2!d" cpchain.txt`
echo $cpchain
pkill -9 $cpchain
echo "stop"
