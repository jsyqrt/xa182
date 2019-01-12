#!/bin/sh

for i in $(seq 4)
do
./cpchain-nodes-init.sh $i
done
