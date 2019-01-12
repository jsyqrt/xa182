#!/bin/sh

./bootnode-stop.sh
echo "stop bootnode."

./cpchain-nodes-stop-all.sh
echo "stop."

./cpchain-nodes-clean-all.sh
echo "clean."

./cpchain-nodes-init-all.sh
echo "init."

./bootnode-start.sh
echo "start bootnode."

./cpchain-nodes-start-all.sh
echo "start."
