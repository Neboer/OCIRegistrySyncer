#!/bin/bash
set -euo pipefail

curl -OL https://github.com/yggdrasil-network/yggdrasil-go/releases/download/v0.5.12/yggdrasil-0.5.12-amd64.deb
sudo DEBIAN_FRONTEND=noninteractive  apt install -y ./yggdrasil-0.5.12-amd64.deb
yggdrasil -genconf | sudo tee /etc/yggdrasil.conf > /dev/null
echo "yggdrasil.conf generated"
sudo systemctl start yggdrasil
echo "yggdrasil started"
sleep 5
sudo yggdrasilctl addpeer "$YGG_ENDPOINT"
echo "Added Yggdrasil peer"
echo "$YGG_HOSTS"|sudo tee -a /etc/hosts > /dev/null
sleep 10
sudo yggdrasilctl getpeers
