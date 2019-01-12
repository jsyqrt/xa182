#!/bin/sh

cpchain=`sed "1!d" cpchain.txt`

datadir="node$1"

syncmode='full'

port=10000
port=`expr $port + $1`

rpcaddr='0.0.0.0'
rpcport="850$1"
rpcapi='personal,db,eth,net,web3,txpool,miner'
rpccorsdomain="http://127.0.0.1:8000"

bootnodeip="127.0.0.1"
bootnodeport="30310"
bootnodepubkey="ea30e7bd08a293ca2835857300ae50a07350a8fd653cea38f45950e33374b997b0e69fac353153d17072d7a76e781b416146f1bb02dfad55e18e9f55022da786"
bootnode="enode://$bootnodepubkey@$bootnodeip:$bootnodeport"
bootnodes=$bootnode

networkid=1234

gasprice='1'

addresses='addresses.txt'
address=`sed "$1!d" $addresses`
password='password.txt'

#if [ $1 = "1" ]
#then
#    address2=`sed "6!d" $addresses`
#    address="$address,$address2"
#    echo $address
#fi

echo $address

$cpchain --datadir $datadir --syncmode $syncmode --port $port --rpc --rpcaddr $rpcaddr --rpcport $rpcport --rpccorsdomain $rpccorsdomain --rpcapi $rpcapi --bootnodes $bootnodes --networkid $networkid --gasprice $gasprice -unlock $address --password $password --mine
