#!/bin/bash

# get private keys from LAN storage
wget 10.22.1.100/stackone.pem
wget 10.22.1.100/stacktwo.pem
chmod 0600 stackone.pem
chmod 0600 stacktwo.pem
