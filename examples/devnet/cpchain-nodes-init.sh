#!/bin/sh

cpchain=`sed "1!d" cpchain.txt`
datadir='node'$1
genesis='genesis.json'

$cpchain --datadir $datadir init $genesis
