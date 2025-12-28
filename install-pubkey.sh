#!/usr/bin/env bash
echo "$PUBKEY"|tee -a ~/.ssh/authorized_keys > /dev/null
ip addr show
