#!/usr/bin/env bash
echo "$PUBKEY"|tee -a ~/.ssh/authorized_keys > /dev/null
sudo apt install -y openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh

ip addr show
