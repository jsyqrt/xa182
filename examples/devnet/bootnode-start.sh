#!/bin/sh

bootnode='./bootnode'
nodekey='bootkey/boot.key'
addr='0.0.0.0:30310'

nohup $bootnode -nodekey $nodekey -verbosity 9 -addr $addr 2>&1 >> logs/bootnode.log &
