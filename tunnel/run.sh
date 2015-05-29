#!/bin/bash

eval $(ssh-agent -s) > /dev/null
ssh-add stackone.pem
ssh-add stacktwo.pem

exec fleetctl --strict-host-key-checking=false --tunnel $*
