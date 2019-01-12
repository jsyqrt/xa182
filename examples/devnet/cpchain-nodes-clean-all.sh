#!/bin/sh

subdatadir='cpchain'

for i in $(seq 4)
do
    rm -rf node$i/$subdatadir
done
