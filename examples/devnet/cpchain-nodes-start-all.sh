#!/bin/sh

for i in $(seq 4)
do
    nohup ./cpchain-nodes-start.sh $i 2>&1 >> logs/$i.log &
done
